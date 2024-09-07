class TransparencyDashboardsController < ApplicationController
  def index
    @total_donations = Donation.sum(:amount)
    @total_allocated = Allocation.sum(:amount)
    @remaining_balance = @total_donations - @total_allocated
    @allocations = Allocation.all
  end
end
