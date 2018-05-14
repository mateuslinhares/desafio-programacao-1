require 'rails_helper'

RSpec.describe Purchaser, type: :model do
  it{ is_expected.to have_many :purchases }
  it{ is_expected.to have_many(:items).through(:purchases) }

  it { is_expected.to validate_presence_of :name }
end
