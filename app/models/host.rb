class Host < ActiveRecord::Base
  has_many :dogs, through: :bookings
  has_many :bookings

end