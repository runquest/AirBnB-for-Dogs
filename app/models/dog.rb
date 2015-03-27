class Dog < ActiveRecord::Base
  has_many :hosts, through: :bookings
  has_many :bookings

  def average_rating
    total_feedback = 0

    bookings.each do |booking|
      total_feedback += booking.dog_feedback
    end
    total_feedback/bookings.length
  end


end