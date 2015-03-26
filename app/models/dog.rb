class Dog < ActiveRecord::Base
  has_many :hosts, through: :bookings


end