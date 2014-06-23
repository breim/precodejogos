class Category < ActiveRecord::Base
	belongs_to :products
	belongs_to :crawlers
end
