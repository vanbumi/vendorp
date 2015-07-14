class Business < ActiveRecord::Base

	has_many   :vendors
	# belongs_to :businesses

	validates_associated :vendors
end
