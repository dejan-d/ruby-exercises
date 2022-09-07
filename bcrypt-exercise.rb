require 'solargraph'
require 'bcrypt'

my_password = BCrypt::Password.create('my password')
my_password1 = BCrypt::Password.create('my password')
my_password2 = BCrypt::Password.create('my password')

puts my_password
puts my_password1
puts my_password2

# my_password = BCrypt::Password.new("$2a$12$5wbLj2Ui9snS3NKkBbKPWO0Lcyc0nWTfCtoFG4xCHZR66lAO9nkDm")
# puts my_password == "my password" 
# my_password == "not my password" #=> false
