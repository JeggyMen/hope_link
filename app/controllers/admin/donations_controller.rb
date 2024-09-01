module Admin
  class DonationsController < ApplicationController
    before_action :authenticate_user!
    before_action :ensure_admin

    def index
      @donations = Donation.includes(:user).order(donation_date: :desc)
    end

    private

    def ensure_admin
      redirect_to root_path, alert: 'You are not authorized to access this section.' unless current_user.admin?
    end
  end
end