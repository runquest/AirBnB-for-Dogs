class ChangeColumnType < ActiveRecord::Migration
  def change
    change_column(:bookings, :dog_comments, :text)
    change_column(:bookings, :owner_comments, :text)
    change_column(:dogs, :description, :text)
    change_column(:hosts, :description, :text)
  end
end
