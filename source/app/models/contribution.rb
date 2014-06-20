class Contribution < ActiveRecord::Base
  has_many :donations
  has_many :senators, through: :donations 
end
