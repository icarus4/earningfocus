class CreateQuarterlyReports < ActiveRecord::Migration
  def change
    create_table :quarterly_reports do |t|
      t.integer :stock_id
      t.integer :year
      t.integer :quarter
      t.float :revenue
      t.float :gross_profit
      t.float :op_income
      t.float :net_income_before_tax
      t.float :net_income

      t.timestamps
    end
    add_index :quarterly_reports, :stock_id
  end
end
