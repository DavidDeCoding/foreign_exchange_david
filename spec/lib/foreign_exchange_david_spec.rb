require 'spec_helper'
require 'foreign_exchange_david'

describe ForeignExchangeDavid do

  before(:all) do
    @forex = ForeignExchangeDavid.new(1.04, "USD")
  end

  it "can detect wrong currency" do
    expect { ForeignExchangeDavid.new(1.04, "ABC") }.to raise_error(RuntimeError)
  end

  it "can detect wrong currency change" do
    @wrong_forex = ForeignExchangeDavid.new(1.44, "USD")
    expect { @wrong_forex.type("ABC") }.to raise_error(RuntimeError)
  end

  it "can change its value and type and get it too" do
    expect(@forex.value(2.09)).to eq(2.09)
    expect(@forex.value).to eq(2.09)
    expect(@forex.type("INR")).to eq("INR")
    expect(@forex.type).to eq("INR")
  end

  it "can count all rates and knows about it too" do
    expect(@forex.rates.count).to eq(150)
    expect(@forex.rates.include?("AUDUSD")).not_to be_nil
  end

  it "can convert and return eforexd value" do
    expect(@forex.get("INR")).not_to be_within(0.0).of(200.0)
  end

  it "returns the same if no type to get" do
    expect(@forex.get).to eq(@forex.value)
  end

  it "can detect wrong type to get" do
    @wrong_forex = ForeignExchangeDavid.new(1.44, "USD")
    expect { @wrong_forex.get("ABC") }.to raise_error(RuntimeError)
  end
end
