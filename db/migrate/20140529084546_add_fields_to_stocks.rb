class AddFieldsToStocks < ActiveRecord::Migration
  def change
    add_column :stocks, :cik, :string
    change_column :stocks, :country, :string, default: 'US'
    add_index :stocks, :cik, unique: true
    add_index :stocks, :company_name
  end
end
