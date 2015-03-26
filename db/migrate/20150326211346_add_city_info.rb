class AddCityInfo < ActiveRecord::Migration
  def change
    add_column :hosts, :city, :string
    add_column :hosts, :country, :string
    add_column :hosts, :zipcode, :string

    add_column :dogs, :city, :string
    add_column :dogs, :country, :string
    add_column :dogs, :zipcode, :string
  end
end
