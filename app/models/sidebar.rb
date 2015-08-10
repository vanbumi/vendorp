class Sidebar < ActiveRecord::Base

	validates :title, :cloud_url, presence: true

	mount_uploader :image_url, ImageUploader
	
end
