class Mechanic < ApplicationRecord
  has_many :rides, through: :mechanic_rides

  validates_presence_of :name, :years_of_expierence
end
