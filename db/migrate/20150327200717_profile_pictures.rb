class ProfilePictures < ActiveRecord::Migration
  def change
    add_column :hosts, :profile_picture, :string
    add_column :dogs, :profile_picture, :string
  end
end
