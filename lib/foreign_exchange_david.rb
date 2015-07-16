require 'foreign_exchange_david/requests'

class ForeignExchangeDavid

  def initialize(value, type)
    @value = value
    if Requests.currencies.include?(type)
      @type = type
    else
      raise "No such currency error"
    end 
    @rates = Requests.make(type)
  end

  def value(value=nil)
    if value.nil? then @value else @value = value end
  end

  def type(type=nil)
    if Requests.currencies.include?(type) or type.nil?
      if type.nil?
        @type 
      else
        @rates = Requests.make(type)
        @type = type  
      end
    else
      raise "No such currency error"
    end
  end

  def rates
    @rates
  end

  def get(type=nil)
    if Requests.currencies.include?(type) or type.nil?
      if type.nil? then @value else ( @value * @rates[type+@type].to_f ) end
    else
      raise "No such currencies error"
    end
  end
end
