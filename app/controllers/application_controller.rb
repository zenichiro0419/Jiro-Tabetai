class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(jirolian_id)
    jirolians_mypage_path jirolian_id
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :image])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :image])
  end
end
