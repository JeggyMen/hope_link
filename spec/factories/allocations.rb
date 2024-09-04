FactoryBot.define do
  factory :allocation do
    category { "MyString" }
    amount { "9.99" }
    donation { nil }
  end
end
