FactoryBot.define do
  factory :category do
    sequence(:name) { |n| "Category #{n}" }
    icon { 'https://example.com/icon.png' }
    association :user, factory: :user
  end
end