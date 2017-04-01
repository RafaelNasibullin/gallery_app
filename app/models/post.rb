class Post < ApplicationRecord
	mount_uploader :image, ImageUploader
	belongs_to :user
	validates :title, presence: true
	validates :image, format: { with: /[a-zA-Z0-9]*.(jpg|png)/,
		message: "only allows letters" }
		validates :image, presence: true
	serialize :images


	end
