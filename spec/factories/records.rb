FactoryBot.define do
  factory :record do
    sequence(:name) { |n| "Record #{n}" }
    amount { 100 }
    association :author, factory: :user
  end
end
