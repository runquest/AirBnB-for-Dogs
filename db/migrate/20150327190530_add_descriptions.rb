class AddDescriptions < ActiveRecord::Migration
  def change
    add_column :hosts, :description, :string
    add_column :dogs, :description, :string
  end
end
