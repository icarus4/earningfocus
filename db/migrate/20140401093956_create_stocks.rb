class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.string :symbol
      t.string :company_name
      t.string :country
      t.string :stock_exchange

      t.timestamps
    end
    add_index :stocks, :symbol
  end
end
