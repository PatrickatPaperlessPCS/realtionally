class AddCrmInfoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :un, :string
    add_column :users, :pw, :string
  end
end
