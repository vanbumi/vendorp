class Mainslide < ActiveRecord::Base

	validates :slidenumber, :cloud_url, presence: true

end
