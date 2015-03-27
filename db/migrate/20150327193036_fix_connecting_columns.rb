class FixConnectingColumns < ActiveRecord::Migration
  def change
    rename_column :bookings, :dogs_id, :dog_id 
    rename_column :bookings, :hosts_id, :host_id
  end
end
