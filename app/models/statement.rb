class Statement < ActiveRecord::Base
  belongs_to :stock

  # stock id
  validates :stock_id, presence: true

  # year
  validates :year, presence: true, length: { is: 4 },
    numericality: { greater_than_or_equal_to: 1900 }

  # quarter
  validates :quarter, presence: true, length: { is: 1 },
    numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 4 }

  # avoid duplicated quarterly report
  validates_uniqueness_of :quarter, scope: [:stock_id, :year]

  validates :revenue, presence: { message: "revenue cannot not be blank" }
end
