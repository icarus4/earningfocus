class AddPeriodEndDateOfDocThatStockInfoParsedFromToStocks < ActiveRecord::Migration
  def change
    add_column :stocks, :period_end_date_of_doc_that_stock_info_parsed_from, :date
  end
end
