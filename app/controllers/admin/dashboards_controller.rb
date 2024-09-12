module Admin
  class DashboardsController < ApplicationController
    before_action :authenticate_user!
    before_action :authorize_admin!

    def index
      @admin = current_user
      @total_donations = Donation.sum(:amount)
      @total_active_donors = User.where(role: 'donor').count
      @donor_goal = 50

      @total_allocated = Allocation.sum(:amount)
      @remaining_balance = @total_donations - @total_allocated
      @allocations = Allocation.all
    end

    private

    def authorize_admin!
      unless current_user.admin? && User.where(role: :admin).count == 1
        redirect_to root_path, alert: "You are not authorized to access this page."
      end
    end
  end
end
