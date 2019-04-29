class PerfilController < ApplicationController
	before_action :imagen, only: [:show, :edit, :update, :destroy]

	def index
		@perfil = perfil.where user_id: current_user.id
	end

	def new
		@perfil = perfil.new
	end

	def edit
		
	end

	def create
  		@perfil = current_user.users.perfil.new perfil_params 		
  		@perfil.save
	end

	def perfil_params
		params.require(:perfil).permit  :perfil 
	end

	def update
		@perfil.update perfil_params
		redirect_to "http://localhost:3000"
	end

	def perfil
		@perfil = perfil.find params[:id]
	end
end
