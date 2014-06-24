class Crawler < ActiveRecord::Base
	belongs_to :console
	has_many :products
end
