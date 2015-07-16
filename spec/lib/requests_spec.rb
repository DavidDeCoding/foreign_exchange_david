require 'spec_helper'
require 'requests'

describe Requests do
  it "knows all currency_formats" do
    currency_formats = Requests.currency_formats("USD")
    expect(currency_formats.include?("CADUSD")).to be_truthy
  end
  it "can make request to get all exchange rates" do
    exchange_rates = Requests.make("USD")
    expect(exchange_rates.include?("CADUSD")).to be_truthy
  end
end
