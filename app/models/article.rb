class Article < ActiveRecord::Base
	belongs_to :admin
	belongs_to :category
	validates :category, presence: true

	#mount uploader untuk menjalankan class uploader
#formatnya adalah
# mount_uploader :field, Class
mount_uploader :image_url, ImageUploader
end
