require 'rails_helper'

RSpec.describe Category, type: :model do
  user = User.create!(name: "James White", email: "jameswhite@gmail.com", password: 123456);
  category = Category.create!(name: "Men's Cloth", user: user)

  it "should have valid attributes" do
    expect(category).to be_valid
  end

  it 'name should not be blank' do
    category.name = nil
    expect(category).to_not be_valid
  end
end