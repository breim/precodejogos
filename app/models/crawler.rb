class Crawler < ActiveRecord::Base
	belongs_to :console
	belongs_to :product
end
