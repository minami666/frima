class ApplicationController < ActionController::Base
  before_action :basic_auth, if: :production?
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :image, :familiy_name_knj, :familiy_name_ktkn, :first_name_knj, :first_name_ktkn, :birth, :tel, :profile])
  end

  private

  def production?
    Rails.env.production?
  end

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == 'admin' && password == '2222'
    end
  end

end

def after_sign_in_path_for(resource)
  root_path
end

def after_sign_out_path_for(resource)
  root_path
end
