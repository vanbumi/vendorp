class Album < ActiveRecord::Base

	validates :title, presence: true

	belongs_to 	:vendor

	has_many 	:gallery
	
end
