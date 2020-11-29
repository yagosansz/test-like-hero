FactoryBot.define do
    factory :user do
        nickname { FFaker::Lorem.word }
        kind { %w(wizard knight).sample }
        level { FFaker::Random.rand(1..99) }
    end

    trait :with_invalid_user_level do
        level { FFaker::Random.rand(100..999) }
    end
end