class RenameQuarterlyReportToStatement < ActiveRecord::Migration
  def change
    rename_table :quarterly_reports, :statements
  end
end
