class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.string :alpha
      t.boolean :beta

      t.timestamps null: false
    end
  end
end
