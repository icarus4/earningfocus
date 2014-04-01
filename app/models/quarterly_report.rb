class QuarterlyReport < ActiveRecord::Base
  belongs_to :stock

  # symbol
  validates :symbol, presence: true, length: { within: 1..6 }

  # stock exchange
  validates :stock_exchange, presence: true, length: { within: 1..8 }

  # year
  validates :year, presence: true, length: { is: 4 },
    numericality: { greater_than_or_equal_to: 1900 }

  # quarter
  validates :quarter, presence: true, length: { is: 1 },
    numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 4 }

  # avoid duplicated quarterly report
  validates_uniqueness_of :quarter, scope: [:symbol, :stock_exchange, :year]

  validates :revenue, presence: true, message: "revenue cannot not be blank"
end
