require_relative "crud"

# $LOAD_PATH << "."
# require "crud" 다른 디렉토리에 있을때 이렇게 사용함 두개 동시에..

users = [
    { username: "mashrur", password: "password1" },
    { username: "jack", password: "password2" },
    { username: "arya", password: "password3" },
    { username: "jonshow", password: "password4" },
    { username: "heisenberg", password: "password5" }
]

hashed_users = Crud.create_secure_users(users)
puts hashed_users