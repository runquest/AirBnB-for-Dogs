require 'digest'
require 'geocoder'

class Host < ActiveRecord::Base
  extend ::Geocoder::Model::ActiveRecord
  has_many :dogs, through: :bookings
  validates :name, presence: true 
  validates :address, presence: true
  # validates :email, uniqueness: true, format: { with: /\A([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)\z/ }
  has_many :bookings
  geocoded_by :full_address
  after_validation :geocode, :if => :address_changed?
  scope :profile_pic, ->(booking) { where(id: booking.host_id).first.email_hash }

  before_save :calculate_user_email_hash

  def full_address
    [address, city, country].compact.join(', ')
  end

  def average_rating
    total_feedback = 0

    bookings.each do |booking|
      total_feedback += booking.dog_feedback
    end
    
    if bookings.length > 0
      total_feedback/bookings.length
    else
      4
    end
  end

  def calculate_user_email_hash
    #add hash column
    self.email_hash = Digest::MD5.hexdigest email 

  end
end