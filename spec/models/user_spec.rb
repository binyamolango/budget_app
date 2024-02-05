require 'rails_helper'

RSpec.describe User, type: :model do
  user = User.create(name: "James White", email: "jamesss@gmail.com", password: 123456);

  it "should have valid attributes" do
    expect(user).to be_valid
  end

  it 'name should not be blank' do
    user.name = nil
    expect(user).to_not be_valid
  end

  it 'email should exist' do
    expect(user.email).to eq 'jamesss@gmail.com'
  end
end