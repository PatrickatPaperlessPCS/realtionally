class AddInfoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :company_name, :string
    add_column :users, :crm, :string
    add_column :users, :cell, :string
    add_column :users, :phone2, :string
    add_column :users, :paid, :boolean
  end
end
