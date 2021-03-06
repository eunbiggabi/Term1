require 'stop_watch'
require 'csv'
require 'faker'
require 'colorize'

# leader_board_array => csv data
def validate_input(message, incorrect_message)        
        input = ""
        while input == ""
            puts message.colorize(:blue)
            input = gets.chomp
            if input == ""
                puts incorrect_message.colorize(:red)
            
            else
                return input
            end
        end
end

def get_leader_board(user_storage)
    leader_board_array = []
        CSV.open(user_storage, "r") {
            |csv| csv.each do |line|
                leader_board_array << line
            end
            leader_board_array.sort { |a, b| a[1].to_i - b[1].to_i }.take(5)
        }
end

def display(level, user, user_storage)
    watch = StopWatch::Timer.new
    arr_csv = []

    system 'clear'
    puts level.colorize(:blue)
    watch.mark ## Check time
    input = gets.chomp
    watch.mark ## Check time
    check = (level == input)
    if check 
        user[:check_time] = watch.mark.join('').to_i.ceil
        puts "#{user[:user_id]} made #{user[:check_time]} seconds".colorize(:blue)
        File.open(user_storage, "a+"){
            |file| file.write("#{user[:user_id]},#{user[:check_time]}\n")
        }
        user_line = ["#{user[:user_id]}", "#{user[:check_time]}"]
        if get_leader_board(user_storage).include?(user_line)
            puts "You are on Top 5".colorize(:blue)
        else
            puts "You couldn't make Top 5".colorize(:blue)
        end
    else
        puts "You are wrong".colorize(:red)
    end
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
check_level = false
do_again = false
arr2_csv = []
difficulty = ["easy", "medium", "hard"]

###########  Start  ##########

until quit
    user = {}
    user[:user_id] = validate_input("Enter ID you want to use", "You must enter a User ID")
    until the_user_wants_to_quit
        
        game_level = validate_input("Hello, you can choose game level\noption: [easy, medium, hard, quit]", "Invailed input")
        break if game_level == "quit"
        until check_level
            if !difficulty.include?(game_level)
                puts "You need to Enter options Only".colorize(:red)
                break
            end
            until do_again
                if validate_input("Enter \"s\" when you ready to go", "Invalid input") == "s"
                    case game_level
                    when "easy"
                        display(easy_level_display, user, "easy_level.csv")
                    when "medium"
                        display(medium_level_display, user, "medium_level.csv")
                    when "hard"
                        display(hard_level_display, user, "hard_level.csv")
                    else
                        puts "Invalid input"
                    end
                    break if validate_input("Do you want to play again\noption: [yes, no]", "Invailed input") == "no"
                end
            end
            p get_leader_board("#{game_level}_level.csv")
            puts "This is leader board (Top 5)".colorize(:blue)
            puts "Thank you for playing~!".colorize(:blue)
                check_level = true
                do_again = true
        end
        
        # the_user_wants_to_quit = true        
    end
    quit = true
end

# update the csvs with the right data
# leaderboard_csv is updated with the new leaderboard_array

