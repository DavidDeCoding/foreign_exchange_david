require 'spec_helper'
require 'foreign_exchange_david/requests'

describe ForeignExchangeDavid::Requests do
  it "knows all currencies" do
    currencies = ForeignExchangeDavid::Requests.currencies
    expect(currencies.include?("USD")).to be_truthy
  end
  it "knows all currency_formats" do
    currency_formats = ForeignExchangeDavid::Requests.currency_formats("USD")
    expect(currency_formats.include?("CADUSD")).to be_truthy
  end
  it "can make request to get all exchange rates" do
    exchange_rates = ForeignExchangeDavid::Requests.make("USD")
    expect(exchange_rates.include?("CADUSD")).to be_truthy
  end
end
