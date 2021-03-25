require_relative "crud"

class Student
    
    include Crud

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

hashed_password = mashrur.create_hash_digest(mashrur.password)

puts hashed_password