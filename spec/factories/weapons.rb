FactoryBot.define do
  factory :weapon do
    name { FFaker::Lorem.word }
    level { FFaker::Random.rand(1..99) }
    description { FFaker::Lorem.sentence }
    power_base { [1000, 2000, 3000].sample }
    power_step { FFaker::Random.rand(1..10) }
  end

  trait :with_invalid_weapon_level do
    level { FFaker::Random.rand(100..999) }
  end

  trait :with_invalid_power_base do
    power_base { [4000, 5000, 6000].sample }
  end

  trait :with_invalid_power_step do
    power_step { FFaker::Random.rand(11..100) }
  end
end
