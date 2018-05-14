require 'rails_helper'

RSpec.describe Merchant, type: :model do
  it { is_expected.to have_many :purchases }

  it { is_expected.to validate_presence_of :address }
  it { is_expected.to validate_presence_of :name }
end
