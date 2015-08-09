class Post < ActiveRecord::Base

	validates :title, :body, :section, :image_url, :kolom, presence: true

	belongs_to 	:vendor
	has_many 	:sections
	belongs_to	:section

	mount_uploader 	:image_url, ImageUploader	
end
