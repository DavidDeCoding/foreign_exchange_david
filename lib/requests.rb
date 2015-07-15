require 'unirest'

class Requests

  def self.currency_formats(value)
    JSON.parse(File.read("./models/xchanges.json"))['currencies'].reject{|currency| currency == value }.map {|currency| (currency+value) }
  end

  def self.make(type, value)
    case type
    when "XCHANGE"
      Hash[*(Unirest.get(
        "http://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20yahoo.finance.xchange%20where%20pair%20in%20%28%22#{self.currency_formats(value).join(',')}%22%29&format=json&env=store://datatables.org/alltableswithkeys"
      ).body)["query"]["results"]["rate"].map {|rate| [rate["id"], rate["Rate"]] }.flat_map {|rate| rate }]
    end
  end

end
