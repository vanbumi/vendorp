class Article < ActiveRecord::Base
	
	validates 	:category, :title, :body, :image_url, :admin_id, presence: true
	validates 	:image_url, allow_blank: false, format: {
	with: 		%r{\.(gif|jpg|png)\Z}i,
	message: 'must be a URL for GIF, JPG or PNG image.'
	}

	belongs_to 	:admin
	belongs_to 	:category
	has_many 	:vendor
	belongs_to 	:vendor

	#mount uploader untuk menjalankan class uploader
#formatnya adalah
# mount_uploader :field, Class
mount_uploader :image_url, ImageUploader
end

