require_relative 'crud'

users = [
{ username: 'dejan', password: 'pass1' }, # user_record
{ username: 'jack', password: 'pass2' },
{ username: 'arya', password: 'pass3' },
{ username: 'johnshow', password: 'pass4' },
{ username: 'heisenberg', password: 'pass5' }
]


hashed_users = Crud.create_secure_users(users)
puts hashed_users
