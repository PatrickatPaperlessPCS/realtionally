class AddHoneyPotToUsers < ActiveRecord::Migration
  def change
    add_column :users, :honeypot, :boolean
  end
end
