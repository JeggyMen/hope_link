require 'rails_helper'

RSpec.describe Donation, type: :model do
  it "is valid with valid attributes" do
    user = User.create(email: "test@example.com", password: "password")
    donation = Donation.new(amount: 100.0, name_of_allocation: "Food", user: user)
    expect(donation).to be_valid
  end

  it "is not valid without an amount" do
    donation = Donation.new(name_of_allocation: "Food")
    expect(donation).to_not be_valid
  end

  it "is not valid without a name of allocation" do
    donation = Donation.new(amount: 100.0)
    expect(donation).to_not be_valid
  end
end