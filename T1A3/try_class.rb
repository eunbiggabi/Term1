require 'stop_watch'
require 'csv'
require 'faker'

# def user_storage(user_record)
#     puts user_record
# end

def validate_input(message, incorrect_message)
    input = ""
    while input == ""
        puts message
        input = gets.chomp
        if input == ""
            puts incorrect_message
        else
            return input
        end
    end
end

def get_game_level(ready_to_select)
    puts    
    puts "option: [easy, medium, hard, quit]"
    if ready_to_select
        level_input = gets.chomp.downcase
    end
    return level_input
end

def get_to_start(ready)
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

def display(level, user)
    watch = StopWatch::Timer.new

    system 'clear'
    puts level
    watch.mark ## Check time
    input = gets.chomp
    watch.mark ## Check time
    check = (level == input)
    user[:check_time] = watch.mark.join('').to_i.ceil
    puts "#{user[:user_id]} made #{user[:check_time]} seconds"
end

def easy_level_display
    easy_display = Faker::Lorem.sentence
end

def medium_level_display
    easy_display = "#{Faker::Lorem.sentence} #{Faker::Lorem.sentence}"
end

def hard_level_display
    easy_display = "#{Faker::Lorem.sentence} #{Faker::Lorem.sentence} #{Faker::Lorem.sentence}"
end

quit = false
ready_to_go = false
the_user_wants_to_quit = false

###########  Start  ##########

until quit
    user = {}
    # confirm = option_input("Your user ID is", "option: [ yes, no ]")
    user[:user_id] = validate_input("Enter ID you want to use", "You must enter a User ID")
    until the_user_wants_to_quit
        p user
        game_level = validate_input("Hello, you can choose game level", "option: [easy, medium, hard, quit]")
        if validate_input("Enter \"s\" when you ready to go", "Invalid input") == "s"
            # get_to_start(game_level)
            case game_level
            when "quit"
                quit = true
                the_user_wants_to_quit = true
            when "easy"
                display(easy_level_display, user)
            when "medium"
                display(medium_level_display, user)
            when "hard"
                display(hard_level_display, user)
            else
                puts "Invalid input"
            end
        end
    end
end






