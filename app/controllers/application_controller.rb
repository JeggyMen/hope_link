class ApplicationController < ActionController::Base
 before_action :configure_permitted_parameters, if: :devise_controller?
 before_action :authenticate_user!
 protected

 def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :phone_number])
  devise_parameter_sanitizer.permit(:account_update, keys: [:name, :phone_number])
 end

 def after_sign_in_path_for(resource)
    donors_dashboard_path if resource.is_a?(User) # Adjust based on your model
 end
end
