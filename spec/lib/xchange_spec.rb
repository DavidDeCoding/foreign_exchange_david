require 'spec_helper'
require 'xchange'

describe Xchange do

  before(:all) do
    @xchange = Xchange.new(1.04, "USD")
  end

  it "can change its value and type and get it too" do
    expect(@xchange.value(2.09)).to eq(2.09)
    expect(@xchange.value).to eq(2.09)
    expect(@xchange.type("INR")).to eq("INR")
    expect(@xchange.type).to eq("INR")
  end

  it "can count all rates and knows about it too" do
    expect(@xchange.rates.count).to eq(150)
    expect(@xchange.rates.include?("AUDUSD")).not_to be_nil
  end

  it "can convert and return exchanged value" do
    expect(@xchange.get("INR")).not_to be_within(0.0).of(200.0)
  end

  it "returns the same if no type to get" do
    expect(@xchange.get).to eq(@xchange.value)
  end
end
