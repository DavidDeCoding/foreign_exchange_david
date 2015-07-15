class Xchange

  def initialize(value, type)
    @value = value
    @type = type
    @rates = Requests.make("XCHANGE", "USD")
  end

  def value(value=nil)
    if value.nil? then @value else @value = value end
  end

  def type(type=nil)
    if type.nil? then @type else @type = type end
  end

  def rates
    @rates
  end

  def get(type=nil)
    if type.nil? then @value else ( @value * @rates[type+@type].to_f ) end
  end
end
