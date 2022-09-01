require 'date'
a = Date.parse("2022/10/10")
b = Date.today()
days = a - b
puts "You have left with #{days} days before flight"
