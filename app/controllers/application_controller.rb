class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:prenom, :nom, :surnom])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:prenom, :nom, :surnom])
    devise_parameter_sanitizer.permit(:account_update, keys: [:prenom, :nom, :surnom])
  end
end
