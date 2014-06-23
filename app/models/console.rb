class Console < ActiveRecord::Base
	belongs_to :product
	has_many :crawlerers
end
