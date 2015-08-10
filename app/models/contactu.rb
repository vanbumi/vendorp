class Contactu < ActiveRecord::Base

	validates :name, :email, :message, presence: true
	validates_format_of :email, :with => /@/

end
