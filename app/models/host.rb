class Host < ActiveRecord::Base
  has_many :dogs, through: :bookings


end