class Section < ActiveRecord::Base
	has_many 	:vendors
	belongs_to 	:post
	has_many	:posts
	
end
