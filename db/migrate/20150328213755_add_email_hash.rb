class AddEmailHash < ActiveRecord::Migration
  def change
    rename_column :hosts, :hash, :email_hash
  end
end
