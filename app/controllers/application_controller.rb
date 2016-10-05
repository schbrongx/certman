class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # Force users to log in

  before_action :authenticate_user!
  
  # add username parameter to devise
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  # add username parameter to devise
  protected

  # add username parameter to devise
  def configure_permitted_parameters
    added_attrs = [:username, :email, :password, :password_confirmation, :remember_me]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :create, keys: added_attrs
    devise_parameter_sanitizer.permit :update, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
    devise_parameter_sanitizer.permit :accept_invitation, keys: added_attrs
  end

  def after_invite_path_for(resource)
    users_path
  end

end
