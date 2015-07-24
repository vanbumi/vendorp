class Gallery < ActiveRecord::Base
	belongs_to :album
	belongs_to :vendor

	mount_uploader :image_url, ImageUploader
end
