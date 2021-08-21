require 'rails_helper'

describe Customer do
  it "is valid with a first_name and last_name" do
    customer = Customer.new({
      first_name: "Eugene",
      last_name: "Ernser"
    })
    expect(customer).to be_valid
  end

  it "is invalid without a first_name" do
    customer = Customer.new({
      first_name: nil,
      last_name: "Eugene"
    })
    customer.valid?
    expect(customer.errors[:first_name]).to include("can't be blank")
  end

  it "is invalid without a last_name" do
    customer = Customer.new({
      first_name: nil,
      last_name: nil
    })
    customer.valid?
    expect(customer.errors[:last_name]).to include("can't be blank")
  end

  it "returns a customer's full name as a string" do
    customer = Customer.new({
      first_name: "Eugene",
      last_name: "Ernser"
    })
    expect(customer.full_name).to eq("Eugene Ernser")
  end

  it "returns sorted array of results that match" do
    customer = Customer.create({
      first_name: "Eugene",
      last_name: "Abc"
    })
    expect(Customer.last_name_has("A")).to include(customer)
  end

  it "has a valid factory" do
    expect(FactoryGirl.build(:customer)).to be_valid
  end
end