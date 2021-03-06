class Purchaser < ApplicationRecord
  has_many :purchases
  has_many :items, through: :purchases

  validates :name, presence: true
end
