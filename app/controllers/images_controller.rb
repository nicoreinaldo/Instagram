class ImagesController < ApplicationController
	#utiliza el ultimo def para las mencionadas funciones
	before_action :imagen, only: [:show, :edit, :update, :destroy]
	def index
		@images = Image.where user_id: current_user.id
	end

	def new
		@image = Image.new
	end

	def create
		#usuario logeado
		@image = current_user.images.new image_params 	
		
		if @image.save	
			return redirect_to "http://localhost:3000"
		end
		render :new
	end

	def show

	end

	def image_params
		params.require(:image).permit :description, :picture
	end

	def update
		@image.update image_params
		redirect_to "http://localhost:3000"
	end

	def edit
	
	end

	def destroy	
		@image.destroy
		redirect_to "http://localhost:3000"
	end

	def imagen
		@image = Image.find params[:id]
	end

end
