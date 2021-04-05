require 'stop_watch'
require 'csv'
require 'faker'

quit = false
confirmed = false
game_ready_to_start = false
other_input = false
user = {}


def easy_level
    def is_equal (display, input)
        puts display == input ? true : false
    end

    back = false
    until back
        puts "Enter \"s\" when you ready to go"
        start_input = ""
        while start_input == ""
            start_input = gets.chomp.downcase
            if start_input == "s"
                game_ready_to_start = true 
            end
        end
        if game_ready_to_start
            system 'clear'
            easy_display = Faker::Lorem.sentence
            puts easy_display
            easy_input = gets.chomp
            check = is_equal(easy_display, easy_input)
            back = true
        end
    end
end



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
        if confirm_id == "yes"
            confirmed = true
        end
    end
    if confirmed 
        puts "Hello #{user[:user_id]}, you can choose game level"    
        puts "option: [easy, medium, hard, quit]"

        input = gets.chomp.downcase
        case input
        when "quit"
            quit = true
        when "easy"
        ###################
            easy_level
        ###################
        when "medium"
            puts "medium"
        when "hard"
            puts "hard"
        else
            puts "Incorrect Option, Try again"
        end
            quit = true
    end
end