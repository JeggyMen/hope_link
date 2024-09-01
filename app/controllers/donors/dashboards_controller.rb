
module Donors
  class DashboardsController < ApplicationController
    before_action :authenticate_user!

    def show
      @donor = current_user
      @donations = current_user.donations.order(donation_date: :desc)
    end
  end
end
