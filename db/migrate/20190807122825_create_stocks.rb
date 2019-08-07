class CreateStocks < ActiveRecord::Migration[5.2]
  def change
    create_table :stocks do |t|
      t.string :name
      t.string :symbol
      t.float :current_price
      t.string :ytd_return
      t.string :description
      t.string :category
      t.integer :safety_level

      t.timestamps
    end
  end
end
