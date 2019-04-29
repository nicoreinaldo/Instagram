class RegistrationsController < Devise::RegistrationsController
before_action :perfil, only: [:show, :edit, :update, :destroy]

	def new
		super
	end


	def edit
		super
	end

	def create
		# super	
		# @user = current_user
		# @user.perfil = "default.jpg"
		# @user.save
	end

	def user_params
		params.require(:user).permit :perfil
	end

end
