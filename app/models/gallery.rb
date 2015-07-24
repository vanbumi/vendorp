class Gallery < ActiveRecord::Base
	belongs_to :album

	mount_uploader :image_url, ImageUploader
end
