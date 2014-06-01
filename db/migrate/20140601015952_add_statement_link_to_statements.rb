class AddStatementLinkToStatements < ActiveRecord::Migration
  def change
    add_column :statements, :statement_link, :string, limit: 255
  end
end
