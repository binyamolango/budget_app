require 'rails_helper'

RSpec.describe Record, type: :model do
  before(:each) do
    @user = User.create!(name: "Janet Jackson", email: "janet@gmail.com", password: 123456)
    @category = Category.create!(name: "Women's Clothing", user: @user)
    @record = described_class.create(name: "Dress", amount: 250, author_id: @user.id)
  end

  it "should have valid attributes" do
    expect(@record).to be_valid
  end

  it 'name should not be blank' do
    @record.name = nil
    expect(@record).to_not be_valid
  end
end