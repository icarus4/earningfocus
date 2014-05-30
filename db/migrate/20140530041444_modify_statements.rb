class ModifyStatements < ActiveRecord::Migration
  def change
    add_column :statements, :symbol, :string
    add_index :statements, :symbol

    add_column :statements, :document_type, :string
    add_column :statements, :fiscal_period_end_date, :date
    add_column :statements, :fiscal_period_duration_in_month, :integer

    change_column :statements, :revenue, :integer
    change_column :statements, :gross_profit, :integer
    remove_column :statements, :op_income
    add_column :statements, :operating_income, :integer
    change_column :statements, :net_income_before_tax, :integer
    remove_column :statements, :net_income
    add_column :statements, :net_income_after_tax, :integer

    add_column :statements, :cost_of_revenue, :integer
    add_column :statements, :total_operating_expense, :integer
    add_column :statements, :eps_basic, :float
    add_column :statements, :eps_diluted, :float
  end
end
