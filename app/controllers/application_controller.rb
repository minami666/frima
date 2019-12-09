class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :image, :familiy_name_knj, :familiy_name_ktkn, :first_name_knj, :first_name_ktkn, :birth, :tel, :profile])
  end
end
