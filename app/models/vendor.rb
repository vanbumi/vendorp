class Vendor < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # validasi
  validates	:name, :section, :description, :contactp, :email, :address, :city, presence: true      


	#mount uploader untuk menjalankan class uploader
	#formatnya adalah
	# mount_uploader :field, Class
	mount_uploader :image_url, ImageUploader

	has_many   	:posts, dependent: :destroy
	has_many   	:albums, dependent: :destroy
	has_many   	:galleries, dependent: :destroy
	belongs_to 	:article
	belongs_to  :section
	

	def self.search(search)
	  where("name LIKE ?", "%#{search}%") 
	  where("city LIKE ?", "%#{search}%")
	end

end
