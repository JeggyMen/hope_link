FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "test#{n}@example.com" }
    password { "password" }
    password_confirmation { "password" }
    name { "Test User" }
    phone_number { "1234567890" }

    trait :admin do
      role { :admin }
    end

    trait :donor do
      role { :donor }
    end
  end
end