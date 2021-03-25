require 'bcrypt'

class Student 
    attr_accessor :first_name, :last_name, :email, :username, :password

    def initialize(firstname, lastname, username, email, password)
        @first_name = firstname
        @last_name = lastname
        @usernaem = username
        @email = email
        @password = password
    end
    
end

mashrur = Student.new("Mashrur", "Hossain", "mashrur1", "mashrur@example.com", "password1")

john = Student.new("Jone", "Doe", "john1", "john1@example.com", "password2")



my_password = BCrypt::Password.create("my password")
my_password_1 = BCrypt::Password.create("my password")
my_password_2 = BCrypt::Password.create("my password")

puts my_password
puts my_password_1
puts my_password_2

puts my_password == "my password"
# puts my_password


# my_password = BCrypt::Password.new("$2a$12$K0ByB.6YI2/OYrB4fQOYLe6Tv0datUVf6VZ/2Jzwm879BW5K1cHey")
# puts my_password == "my password"  #=> true
# my_password == "not my password" #=> false