class Purchase < ApplicationRecord
  attr_accessor :file

  belongs_to :purchaser
  belongs_to :item
  belongs_to :merchant

  validates :purchaser_id, :item_id, :merchant_id, :amount, presence: true

  scope :summary, -> {
    includes(:purchaser, :item, :merchant)
  }

  def total
    item.price * amount
  end

  def self.revenue
    joins(:item)
    .sum('(purchases.amount * items.price)')
  end
end
