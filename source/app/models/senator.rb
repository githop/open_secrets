class Senator < ActiveRecord::Base
	has_many :donations
	has_many :contributions, through: :donations
end
