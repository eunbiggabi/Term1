# # puts "Enter your age"
# # age = gets.chomp.to_i
# # birth_year = Time.now.year - age
# # puts "You were bornin #{birth_year}!"

# def divide(num1, num2) 
#     puts "Result is #{num1 / num2}"
# end

# puts "Enter two numbers"
# # num1 = gets.to_i
# # num2 = gets.to_i

# begin
#     # num1 = gets.to_i
#     # num2 = gets.to_i
#     # divide(num1, num2)
#     divide(4, 2)
#     # divide(4, 0)
#     divide(4, "hello")
# # rescue TypeError
# #     puts "Please enter numbers only!"
# # rescue ZeroDivisionError
# #     # puts "An exception occured"
# #     puts "Cannot divide by zero" 
# rescue Exception => e
#     puts e.message
#     puts "Exception occured"
#     ## always general rescue is last
# end

# class InsufficientFunds < StandardError
    
# end


# $balance = 10

# def withdraw(amount)
#     raise InsufficientFunds.new("Not enough funds") if amount > $balance
#     $balance -= amount
# end

# begin
# withdraw(20)
# puts $balance
# # rescue Exception => e
# #   puts "ERROR: #{e.message}"
# rescue InsufficientFunds => e
#     puts "ERROR: #{e.message}"
# end

class InsufficientFunds < StandardError
    # def initialize
    #     super("Not enough funds")
    # end
    def initialize(msg="Not enough funds")
        super(msg)
    end
end


$balance = 10

def withdraw(amount)
    raise InsufficientFunds.new("Hello") if amount > $balance
    $balance -= amount


end

begin
withdraw(20)
puts $balance
# rescue Exception => e
#   puts "ERROR: #{e.message}"
rescue InsufficientFunds => e
    puts "ERROR: #{e.message}"
end