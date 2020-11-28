require 'rails_helper'

RSpec.describe User, type: :model do
  it "is invalid if the level is not between 1 and 99" do
    user = build(:user, :with_invalid_level)
    expect(user).to_not be_valid
  end

  it "returns the correct hero title" do
    user = build(:user)
    expect(user.title).to eq "#{user.kind} #{user.nickname} ##{user.level}"
  end
end
