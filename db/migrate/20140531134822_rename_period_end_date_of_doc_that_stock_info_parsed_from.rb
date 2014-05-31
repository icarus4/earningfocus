class RenamePeriodEndDateOfDocThatStockInfoParsedFrom < ActiveRecord::Migration
  def change
    rename_column :stocks, :period_end_date_of_doc_that_stock_info_parsed_from, :fiscal_period_end_date_of_doc_that_stock_info_parsed_from
  end
end
