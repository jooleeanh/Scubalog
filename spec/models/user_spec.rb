require 'rails_helper'
OmniAuth.config.test_mode = true

RSpec.describe User, type: :model do

  let(:new_user) do
    User.new(email: "test@test.test",
             password: "testing",
             first_name: "tester",
             last_name: "testers")
  end

  it "is valid with valid attributes" do
    expect(new_user).to be_valid
  end

  it "is not valid without an email" do
    new_user.email = nil
    expect(new_user).to_not be_valid
  end

  it "is not valid without a password with 6 characters or more" do
    new_user.password = "12345"
    expect(new_user).to_not be_valid
  end

  it "is not valid without a first name" do
    new_user.first_name = nil
    expect(new_user).to_not be_valid
  end

  it "is not valid without a last name" do
    new_user.last_name = nil
    expect(new_user).to_not be_valid
  end

  it "is not valid without a avatar picture url" do
    new_user.avatar_picture_url = nil
    expect(new_user).to_not be_valid
  end

  it "can sign up with the sign-up form"
  it "can sign up with facebook"
  it "can sign up with google"
end
