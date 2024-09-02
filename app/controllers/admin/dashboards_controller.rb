module Admin
  class DashboardsController < ApplicationController
    before_action :authenticate_user!
    before_action :authorize_admin!

    def index
       @total_donations = Donation.sum(:amount)
    end

    private

    def authorize_admin!
      unless current_user.admin? && User.where(role: :admin).count == 1
        redirect_to root_path, alert: "You are not authorized to access this page."
      end
    end
  end
end