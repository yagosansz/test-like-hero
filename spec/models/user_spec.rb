require 'rails_helper'

RSpec.describe User, type: :model do
  it "is invalid if user level is not between 1 and 99" do
    user = build(:user, :with_invalid_user_level)
    expect(user).to_not be_valid
  end

  it "returns the correct user title" do
    user = build(:user)
    expect(user.title).to eq "#{user.kind} #{user.nickname} ##{user.level}"
  end
end
