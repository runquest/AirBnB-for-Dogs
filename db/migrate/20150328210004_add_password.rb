class AddPassword < ActiveRecord::Migration
  def change
    add_column :hosts, :password, :string
    add_column :hosts, :username, :string
  end

end
