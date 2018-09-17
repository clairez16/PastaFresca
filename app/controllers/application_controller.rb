class ApplicationController < ActionController::Base
  protect_from_forgery
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :city, :phone_number])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :city, :phone_number])
  end

end
