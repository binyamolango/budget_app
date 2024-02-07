require 'rails_helper'

RSpec.describe User, type: :model do
  before(:each) do
    @user = User.create(name: 'James White', email: 'whitej@gmail.com', password: 123_456)
  end

  it 'should have valid attributes' do
    expect(@user).to be_valid
  end

  it 'name should not be blank' do
    @user.name = nil
    expect(@user).to_not be_valid
  end

  it 'email should exist' do
    expect(@user.email).to eq 'whitej@gmail.com'
  end
end
