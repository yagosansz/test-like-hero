require 'rails_helper'

RSpec.describe Weapon, type: :model do
  it "is invalid if weapon level is not between 1 and 99" do
    weapon = build(:weapon, :with_invalid_weapon_level)
    expect(weapon).to_not be_valid
  end

  it "is invalid if weapon power base is not in allowed values" do
    weapon = build(:weapon, :with_invalid_power_base)
    expect(weapon).to_not be_valid
  end

  it "is invalid if weapon power step is not between 1 and 10" do
    weapon = build(:weapon, :with_invalid_power_step)
    expect(weapon).to_not be_valid
  end

  it "returns the correct weapon title" do
    weapon = build(:weapon)
    expect(weapon.title).to eq "#{weapon.name} ##{weapon.level}"
  end
end
