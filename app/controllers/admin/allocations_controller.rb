module Admin
  class AllocationsController < ApplicationController
    def new
      @allocation = Allocation.new
    end

    def create
      @allocation = Allocation.new(allocation_params)
      if @allocation.save
        redirect_to admin_dashboard_path, notice: 'Allocation was successfully created.'
      else
        flash.now[:alert] = 'Error creating allocation: ' + @allocation.errors.full_messages.to_sentence
        render :new
      end
    end

    private

    def allocation_params
      params.require(:allocation).permit(:category, :amount, :donation_id)
    end
  end
end
