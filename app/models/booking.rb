class Booking < ActiveRecord::Base
  belongs_to :dog
  belongs_to :host

  validates :dog_feedback, numericality: { maximum: 7 }

  # def host_profile_picture
  #   host = Host.where(id: :owner_id)
  #   host.first.profile_picture
  # end


end