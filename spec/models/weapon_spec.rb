require 'rails_helper'

RSpec.describe Weapon, type: :model do
  it 'is invalid if the level is not between 1 and 99' do
    weapon = build(:weapon, level: FFaker::Random.rand(100..9999))
    expect(weapon).to_not be_valid
  end
end
