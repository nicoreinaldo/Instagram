class RegistrationsController < Devise::RegistrationsController
	before_filter :configure_permitted_parameters

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up).push(:email, :password)
    # devise_parameter_sanitizer.for(:account_update).push(:name, :surname, :email, :avatar)
  end
  def create
    super
  end

  def after_sign_in_path_for(resource)
    request.env['omniauth.origin'] || stored_location_for(resource) || root_path
  end

  protected

  def after_update_path_for(resource)
    user_path(resource)
  end

  def update_resource(resource, params)
    resource.update_without_password(params)
  end

  def sign_up_params
    params.require(:user).permit(:email, :password)
  end

  def account_update_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :current_password, :perfil)
  end
end