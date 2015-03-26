class Booking < ActiveRecord::Base
  belongs_to :dog
  belongs_to :host
  validates :host_id, presence: true
  validates :dog_id, presence: true
end