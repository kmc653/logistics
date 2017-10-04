class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery prepend: true, with: :exception
  before_action :authenticate_user!
  # before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.permit(:sign_up) do |user_params|
  #     user_params.permit(:email, :password, :password_confirmation, :mobile_number)
  #   end
  # end

  # helper_method :current_user, :logged_in?

  # def current_user
  #   @current_user ||= Staff.find(session[:staff_id]) if session[:staff_id]
  # end

  # def logged_in?
  #   !!current_user
  # end
end
