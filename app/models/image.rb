class Image < ApplicationRecord
    mount_uploader :picture ,PictureUploader

	validates :description, presence: true
	validates :picture, presence: true

	#la imagen pertenece a un usuario
	belongs_to :user
end
