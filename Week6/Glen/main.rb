require 'csv'

users_array = []

until quit
    puts "options: [login, signup]"
    # signup
    input = gets.chomp
    if input == "signup"
        puts "what is your username?"
        username = gets.chomp
        puts "what is your password?"
        password = gets.chomp
        user = {}
        user[:username] = username
        user[:password] = password
        users_array.push(user)
        file = File.open("users.csv", "a") {
            |file| file.write("#{username},#{password}\n")
        }

    elsif input == 'login'
        puts "What is your username"
        username = gets.chomp
        puts "What is your password"
        password = gets.chomp
        CSV.open("users.csv", "r") do |csv| 
            csv.each do |line|
                if (line[0] == username)
                    if (line[1] == password)
                        puts "you are logged in"
                        
                    end
                end
            end
        end
        puts "Incorrect Informatin, try again"
        
    end
    p users_array
    # login
    puts "what would you like to do?"
    puts "options: quit"
end

p quit()