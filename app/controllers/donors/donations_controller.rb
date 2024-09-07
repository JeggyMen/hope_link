module Donors
  class DonationsController < ApplicationController
  before_action :authenticate_user!
    
    def new
      @donation = current_user.donations.new
    end

    def create
      @donation = current_user.donations.new(donation_params)
      @donation.donation_date = Time.current
      
      if @donation.save
        redirect_to donors_dashboard_path, notice: 'Donation successfully sent.'
      else
        render :new
      end
    end

    private

    def donation_params
      params.require(:donation).permit(:amount, :name_of_allocation)
    end
  end
end