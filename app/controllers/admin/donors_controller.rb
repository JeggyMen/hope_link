module Admin
  class DonorsController < ApplicationController
    before_action :authenticate_user!
    before_action :ensure_admin

    def index
      @donors = User.where(role: 'donor').order(:name)
    end

    private

    def ensure_admin
      redirect_to root_path, alert: 'You are not authorized to access this section.' unless current_user.admin?
    end
  end
end
