class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  #se ejectura si exciste un divise controller
  before_action :configure_devise_params, if: :devise_controller?
  

  def configure_devise_params
  	devise_parameter_sanitizer.permit(:sign_up) do |user| 
  		user.permit(:name, :email, :password, :password_confirmation, :perfil)
  	end
  	devise_parameter_sanitizer.permit(:account_update) do |user| 
  		user.permit(:name, :email, :password, :password_confirmation, :current_password,:perfil)
  	end
  end

end
	