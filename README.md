# Ruby Custom Project Test

## Usage

gem 'foreign_exchange_david'

require 'foreign_exchange_david'
forex = ForeignExchangeDavid.new(value, currency)
e.g. 
forex = ForeignExchangeDavid.new(1.04, "USD")

## Methods

### value
Takes 0 or 1 argument
Returns Its value if 0 argument or the new value if 1 argument

e.g.
forex = ForeignExchangeDavid.new(1.04, "USD")

forex.value # -> 1.04 

forex.value(2.5) # -> 2.5

### type
Takes 0 or 1 argument
Returns Its type if 0 argument or the new type if 1 argument

e.g.

forex = ForeignExchangeDavid.new(1.04, "USD")

forex.type # -> "USD"

forex.type("INR") # -> "INR"

### get
Takes 1 argument
Returns the converted value to argument given

e.g. 

forex = ForeignExchangeDavid.new(1.04, "USD")

forex.get("INR") # -> 63.45 depends on whatever the current exchange rate is


