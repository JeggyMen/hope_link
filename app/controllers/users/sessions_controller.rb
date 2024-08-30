class Users::SessionsController < Devise::SessionsController
  after_action :redirect_to_dashboard, only: [:create]

  private

  def redirect_to_dashboard
    if current_user
      redirect_to donors_dashboard_path
    end
  end
end