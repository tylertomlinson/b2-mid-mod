class Ride < ApplicationRecord
 belongs_to :amusement_park

 validates_presence_of :name, :rating
end
