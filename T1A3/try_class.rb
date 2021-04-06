require 'stop_watch'
require 'csv'
require 'faker'

# def user_storage(user_record)
#     puts user_record
# end

def validate_input(message, incorrect_message)
    user = {} 

    input = ""
    while input == ""
        puts message
        input = gets.chomp
        if input == ""
            puts incorrect_message
        else
            user[:input] = input
        end
    end
    return user
end

def option_input(message, option_message)
    user_id = validate_input("Enter ID you want to use", "You must enter a User ID")
    confirmed = false

    confirm_id = ""
    while confirm_id == ""
        puts "#{message}, #{user_id[:input]}"
        puts option_message
        confirm_id = gets.chomp.downcase
        if confirm_id == "yes"
            confirmed = true
        end
    end
    return confirmed
end

def get_game_level(ready_to_select)
    puts "Hello, you can choose game level"    
    puts "option: [easy, medium, hard, quit]"
    if ready_to_select
        level_input = gets.chomp.downcase
    end
    return level_input
end

def get_to_start(ready)
    puts "Enter \"s\" when you ready to go"
    start_input = ""
    while start_input == ""
        start_input = gets.chomp.downcase
        if start_input == "s"
            game_ready_to_start = true 
        else
            puts "Invalid input"
        end
    end
    return game_ready_to_start
end

def easy_level_display(button)
    watch = StopWatch::Timer.new
    easy_display = Faker::Lorem.sentence

    system 'clear'
    puts easy_display
    watch.mark ## Check time
    easy_input = gets.chomp
    watch.mark ## Check time
    check = (easy_display == easy_input)
    p check
end


quit = false
ready_to_go = false

###########  Start  ##########
until quit
    confirmed = option_input("Your user ID is", "option: [ yes, no ]")
    game_level = get_game_level(confirmed)
    until ready_to_go
        get_to_start(game_level)
        case game_level
        when "quit"
            quit = true
        when "easy"
            
        when "medium"

        when "hard"

        else
            puts "Invalid input"
        end
    end
end

    # if  
    #     # puts "Hello #{user[:user_id]}, you can choose game level"    
    #     puts "option: [easy, medium, hard, quit]"
    # end




# variable = {"hello" => "haha"}
# def method(user)
#     puts user
# end
# method(variable)


