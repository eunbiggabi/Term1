require 'bcrypt'

my_password = BCrypt::Password.create("my password")
puts my_password

my_password = BCrypt::Password.new("$2a$12$K0ByB.6YI2/OYrB4fQOYLe6Tv0datUVf6VZ/2Jzwm879BW5K1cHey")
# my_password == "my password"     #=> true
# my_password == "not my password" #=> false