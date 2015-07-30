class Album < ActiveRecord::Base
	belongs_to 	:vendor

	has_many 	:gallery
	
end
