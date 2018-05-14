require 'rails_helper'

RSpec.describe PurchaseFileConsumer do
  before do
    @file = file_fixture("purchases.tab")
  end

  subject{ PurchaseFileConsumer.new(@file) }

  it "reads purchasers" do
    expect{ subject.consume }.to change(Purchaser, :count).to(4)
  end

  it "reads merchants" do
    expect{ subject.consume }.to change(Merchant, :count).to(3)
  end

  it "reads items" do
    expect{ subject.consume }.to change(Item, :count).to(3)
  end

  it "reads purchases" do
    expect{ subject.consume }.to change(Purchase, :count).to(4)
  end

end