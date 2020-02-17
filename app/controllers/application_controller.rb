class ApplicationController < ActionController::Base
 protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_cache_buster
  before_action :authenticate_user!
  
  def after_sign_in_path_for(resource)
    index_path
  end

  def after_sign_out_path_for(resource)
    root_path
  end

  def set_cache_buster
    response.headers["Cache-Control"] = "no-cache, no-store, max-age=0, must-revalidate"
    response.headers["Pragma"] = "no-cache"
    response.headers["Expires"] = "Fri, 01 Jan 1990 00:00:00 GMT"
  end
  
private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:profile_picture])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name,:profile_picture])
  end


end
