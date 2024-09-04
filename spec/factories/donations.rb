FactoryBot.define do
  factory :donation do
    amount { 100.0 }
    name_of_allocation { "Food" }
    association :user 
  end
end