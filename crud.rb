require 'solargraph'
require 'bcrypt'

users = [
	{username: "dejan", password: "pass1"}, #user_record
	{username: "jack", password: "pass2"},
	{username: "arya", password: "pass3"},
	{username: "johnshow", password: "pass4"},
	{username: "heisenberg", password: "pass5"}
]

def create_hash_digest(password)
    BCrypt::Password.create(password)
end

def verified_hash_digest(password)
    BCrypt::Password.new(password)
end

def create_secure_users(list_of_users)
    list_of_users.each do |user_record|
        user_record[:password] = create_hash_digest(user_record[:password])
    end
    list_of_users
end

puts create_secure_users(users)