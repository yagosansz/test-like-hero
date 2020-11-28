require 'rails_helper'

RSpec.describe User, type: :model do
  it "is invalid if the level is not between 1 and 99" do
    hero = User.create(kind: :wizard, nickname: "My Hero", level: 100)
    expect(hero).to_not be_valid
  end

  it "returns the correct hero title" do
    hero = User.create(kind: :wizard, nickname: "My Hero", level: 25)
    expect(hero.title).to eq "wizard My Hero #25"
  end
end
