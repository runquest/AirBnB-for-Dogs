class AddDogEmailHash < ActiveRecord::Migration
  def change
    add_column :dogs, :email_hash, :string
  end
end
