# Each element in an Array is a HASH
# key:username value:dejan || password:key pass1:value
# username: & password: are Symbols || "dejan" & "pass1" are Strings
users = [
  { username: 'dejan', password: 'pass1' }, # user_record
  { username: 'jack', password: 'pass2' },
  { username: 'arya', password: 'pass3' },
  { username: 'johnshow', password: 'pass4' },
  { username: 'heisenberg', password: 'pass5' }
]

def auth_user(username, password, list_of_users)
  list_of_users.each do |user_record| # loop through each user and make a comparison
    if user_record[:username] == username && user_record[:password] == password # If username match password
      return user_record # return this user array
    end
  end

  'Input Not correct'

end

puts 'Welcome to the authenticator'
25.times { print '-' }
puts 'This program will take input from the user and compare password'
puts 'If password is correct, you will get back the user object'



attempts = 1


while attempts < 4
  # while condition is true - keep looping.

  print 'Username: ' # 1
  username = gets.chomp

  print 'Password: ' # 2
  password = gets.chomp

  authentication = auth_user(username, password, users) # 3
  puts authentication

  puts 'press n to quit or any other key to continue:'
  input = gets.chomp.downcase

  break if input == 'n'

  attempts += 1 # break when it reaches 4
end

puts 'You have exceeded number of attempts' if attempts == 4
