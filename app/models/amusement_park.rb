class AmusementPark < ApplicationRecord
  has_many :rides

  validates_presence_of :name, :admission_price

  def average_thrill_rating
    rides.average(:rating)
    # rides.average(:rating).round(1) - this will give me 5.3 instead of 5.333333
    # but when running test is comes back undefined method `round' for nil:NilClass
    # I tried making a local variable etc etc. Would love to know how to do it via AR 
  end
end
