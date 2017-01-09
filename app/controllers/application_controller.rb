class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
    before_filter :configure_permitted_parameters, if: :devise_controller?
 invisible_captcha only: [:create, :update], honeypot: :honeypot
def after_sign_in_path_for(user)
  pages_dashboard_path
end
   protected

    def configure_permitted_parameters
	    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :company_name, :email, :password, :cell, :phone2, :crm, :paid, :un, :pw])
	    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :email, :company_name, :password, :cell, :phone2, :crm, :paid, :un, :pw])
    end
end
