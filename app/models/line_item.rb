class LineItem < ApplicationRecord
  belongs_to :line_item_date

  validates :name, presence: true
  validates :unit_price, presence: true, numericality: { greater_than: 0 }
  validates :quantity, presence: true, numericality: { only_integer: true, greater_than: 0 }

  delegate :quote, to: :line_item_date

  def total_price
    unit_price * quantity
  end
end
