class Product < ActiveRecord::Base
	has_many :categories
	has_many :consoles
	belongs_to :crawlers
	belongs_to :game
end
