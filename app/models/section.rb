class Section < ActiveRecord::Base

	validates :name, presence: true

	has_many 	:vendors
	belongs_to 	:post
	has_many	:posts
	
end
