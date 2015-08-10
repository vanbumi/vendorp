class Category < ActiveRecord::Base

	validates :title, presence: true

	has_many :articles
	validates_associated :articles

end
