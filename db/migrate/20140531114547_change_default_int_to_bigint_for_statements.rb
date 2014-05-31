class ChangeDefaultIntToBigintForStatements < ActiveRecord::Migration
  def change
    change_column :statements, :revenue, :integer, limit: 8
    change_column :statements, :gross_profit, :integer, limit: 8
    change_column :statements, :net_income_before_tax, :integer, limit: 8
    change_column :statements, :net_income_after_tax, :integer, limit: 8
    change_column :statements, :operating_income, :integer, limit: 8
    change_column :statements, :cost_of_revenue, :integer, limit: 8
    change_column :statements, :total_operating_expense, :integer, limit: 8
  end
end
