class Perfil < ApplicationRecord

	#mount_uploader :perfil,PictureUploader
	#mount_uploader :perfil, PerfilUploader

	#la imagen pertenece a un usuario
	belongs_to :user
end
