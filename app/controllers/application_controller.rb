class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception

  private
  def configure_permitted_parameters
   	devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password, :avatar)}
   	devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :email, :password, :avatar, :password_confirmation, :current_password)}
  end

end
