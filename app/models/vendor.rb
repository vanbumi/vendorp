class Vendor < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

#mount uploader untuk menjalankan class uploader
#formatnya adalah
# mount_uploader :field, Class
mount_uploader :image_url, ImageUploader

end
