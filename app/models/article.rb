class Article < ActiveRecord::Base
	belongs_to :admin
	belongs_to :category

	validates :category, presence: true
end
