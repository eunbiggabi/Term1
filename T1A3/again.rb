quit = false
confirmed = false
user = {}

puts "Typing game will help you to learn how to type"
puts "Type what you can see on the screen (Case-sensitive)"
until quit
    user_id = ""
    while user_id == ""
        # asking for first_id
        
        puts "Enter ID you want to use"
        user_id = gets.chomp
        if user_id == ""
            puts "You must enter a User ID"
        else
            user[:user_id] = user_id
        end
    end

    # Confirming id
    confirm_id = ""
    while confirm_id == ""
        puts "Your user ID is '#{user[:user_id]}'"
        puts "option: [ yes, no ]"
        confirm_id = gets.chomp.downcase
        # case confirm_id
        #     when "no"
        #         confirmed == true
        #     when "yes"
        #         confirmed = false
        #     else
        #         puts "Invalid input"
        #     end
        if confirm_id == "yes"
            confirmed = true
        end
    end
    if confirmed 
        puts "Hello #{user[:user_id]}, you can choose game level"    
        quit = true
    end
end