FactoryBot.define do
  factory :user do
    name { 'John' }
    email { 'jo@example.com' }
    password { 'password' }
  end
end