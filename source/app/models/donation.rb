class Donation < ActiveRecord::Base
	belongs_to :senator
	belongs_to :contribution 
end
