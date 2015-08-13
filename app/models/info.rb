class Info < ActiveRecord::Base

	validates :image_url, :comp_name, :comp_address, :comp_phone, :comp_email, :comp_web, :comp_social, presence: true

	mount_uploader :image_url, ImageUploader
end
