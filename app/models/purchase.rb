class Purchase < ApplicationRecord
  belongs_to :purchaser
  belongs_to :item
  belongs_to :merchant

  validates :purchaser_id, :item_id, :merchant_id, :amount, presence: true
end
