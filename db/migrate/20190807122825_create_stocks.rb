class CreateStocks < ActiveRecord::Migration[5.2]
  def change
    create_table :stocks do |t|
      t.string :name
      t.string :symbol
      t.float :purchase_price
      t.float :ytd
      t.float :three_ytd
      t.string :sector
      t.string :description
      t.string :category
      t.integer :risk_level
      t.string :stock_url

      t.timestamps
    end
  end
end
