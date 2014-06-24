class Product < ActiveRecord::Base
	has_many :categories
	has_many :consoles
	has_many :crawlers
	belongs_to :game
end
