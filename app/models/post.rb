class Post < ActiveRecord::Base
	belongs_to :vendor

	mount_uploader :image_url, ImageUploader
end
