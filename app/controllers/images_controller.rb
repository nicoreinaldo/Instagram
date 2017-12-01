class ImagesController < ApplicationController
	def new
	end

	def create
		# render plain: params[:image].inspect
		@image = Image.new image_params
		@image.save

		redirect_to @image
	end

	def show
		@image = Image.find params[:id]
	end

	def image_params
		params.require(:image).permit(:description)
	end
end
