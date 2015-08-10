class Gallery < ActiveRecord::Base

	validates :album_id, :title, :image_url, presence: true

	belongs_to :album
	belongs_to :vendor

	mount_uploader :image_url, ImageUploader
end
