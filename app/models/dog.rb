class Dog < ActiveRecord::Base
  has_many :hosts, through: :bookings
  validates :name, presence: true
  validates :breed, presence: true
  validates :gender, presence: true
  validates :address, presence: true
  validates :email, uniqueness: true, format: { with: /\A([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)\z/ }
  before_save :set_breed

  private
  def set_breed
    breed = "Unknown" if breed == nil
  end

end