require 'rails_helper'

RSpec.describe Item, type: :model do
  it { is_expected.to have_many :purchases }

  it { is_expected.to validate_presence_of :description }
  it { is_expected.to validate_presence_of :price }
end
