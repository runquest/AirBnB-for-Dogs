class Host < ActiveRecord::Base
  has_many :dogs, through: :bookings
  has_many :bookings

  scope :profile_pic, ->(booking) { where(id: booking.host_id).first.profile_picture }

end