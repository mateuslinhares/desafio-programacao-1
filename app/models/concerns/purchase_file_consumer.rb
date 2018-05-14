require 'csv'

class PurchaseFileConsumer
  def initialize(file)
    @file = file
  end

  def consume
    CSV.foreach(@file, col_sep: "\t", headers: true) do |row|
      purchaser = Purchaser.find_or_create_by(name: normalize(row[0]))
      item = Item.find_or_create_by(description: normalize(row[1]), price: row[2].to_f)
      merchant = Merchant.find_or_create_by(address: normalize(row[4]), name: normalize(row[5]))

      Purchase.create({
        purchaser: purchaser,
        item: item,
        merchant: merchant,
        amount: row[3]
      })
    end
  end

  private

  def normalize(string)
    string.squish
  end
end