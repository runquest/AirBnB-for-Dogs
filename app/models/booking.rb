class Booking < ActiveRecord::Base
  belongs_to :dog
  belongs_to :host


end