class CreateUsers < ActiveRecord::Migration
  def change
    create_table :hosts do |t|
      t.string :name
      t.string :address
      t.string :email
      t.string :phone_number
      t.integer :money
      t.date :birthday
      t.timestamps 
    end

    create_table :dogs do |t|
      t.string :name 
      t.string :address
      t.string :email
      t.string :phone_number    
      t.timestamps
    end

    create_table :contracts do |t|
      t.references :hosts
      t.references :dogs
      t.integer :dog_feedback
      t.integer :owner_feedback
      t.string :dog_comments
      t.string :owner_comments
      t.timestamps
    end
  end
end
