module Donors
  class DonationsController < ApplicationController
    before_action :authenticate_user!
    
    def new
      @donation = current_user.donations.new
    end

    def create
      @donation = current_user.donations.new(donation_params)
      @donation.donation_date = Date.today
      
      if @donation.save
        amount = (@donation.amount.to_f * 100).to_i # Convert to cents for Paymongo
        payment_link = create_paymongo_link(amount)
        
        if payment_link && payment_link['data']
          respond_to do |format|
            format.html { redirect_to payment_link['data']['attributes']['checkout_url'], allow_other_host: true }
            format.js   # This will render create.js.erb
          end
        else
          flash[:error] = "Error creating payment link."
          render :new
        end
      else
        flash[:error] = "Error saving donation."
        render :new
      end
    end



    private

    def donation_params
      params.require(:donation).permit(:amount)
    end

    def create_paymongo_link(amount)
      uri = URI.parse("https://api.paymongo.com/v1/links")
      request = Net::HTTP::Post.new(uri)
      request.content_type = "application/json"
      request["Authorization"] = "Basic #{Base64.strict_encode64(ENV['PAYMONGO_SECRET_KEY'])}" # use environment variable
      request.body = {
        data: {
          attributes: {
            amount: amount,
            description: "Donation to Hope Link"
          }
        }
      }.to_json

      response = Net::HTTP.start(uri.hostname, uri.port, use_ssl: true) do |http|
        http.request(request)
      end

      JSON.parse(response.body)
    end
  end
end
