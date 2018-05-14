require 'rails_helper'

RSpec.describe Purchase, type: :model do
  it { is_expected.to belong_to :purchaser }
  it { is_expected.to belong_to :item }
  it { is_expected.to belong_to :merchant }

  it { is_expected.to validate_presence_of :purchaser_id }
  it { is_expected.to validate_presence_of :item_id }
  it { is_expected.to validate_presence_of :merchant_id }
  it { is_expected.to validate_presence_of :amount }
end
