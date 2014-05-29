class Stock < ActiveRecord::Base
  has_many :statements, dependent: :destroy

  # save symbol as up case
  before_save { self.symbol = symbol.upcase }

  # symbol
  validates :symbol, presence: true, length: { within: 1..6 },
    uniqueness: { scope: :stock_exchange, case_sensitive: false }

  # company name
  validates :company_name, presence: true, length: { within: 1..128 }

  # stock exchange
  validates :stock_exchange, length: { within: 1..6 } # FIXME
end
