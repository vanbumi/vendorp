class Category < ActiveRecord::Base

	has_many :articles
	validates_associated :articles

end
