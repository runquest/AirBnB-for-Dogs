class AddHash < ActiveRecord::Migration
  def change
    add_column :hosts, :hash, :string
  end
end
