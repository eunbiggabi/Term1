require 'stop_watch'
require 'csv'
require 'faker'

# leader_board_array => csv data
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

def display(level, user, cvs)
    watch = StopWatch::Timer.new
    arr_csv = []

    system 'clear'
    puts level
    watch.mark ## Check time
    input = gets.chomp
    watch.mark ## Check time
    check = (level == input)
    if check 
        user[:check_time] = watch.mark.join('').to_i.ceil
        puts "#{user[:user_id]} made #{user[:check_time]} seconds"
        File.open(cvs, "a+"){
            |file| file.write("#{user[:user_id]},#{user[:check_time]}\n")
        }
        CSV.open(cvs, "r") {
            |csv| csv.each do |line|
                arr_csv << line
            end
            top_5 = arr_csv.sort { |a, b| a[1].to_i - b[1].to_i }.take(5)
            p top_5
            user_line = ["#{user[:user_id]}", "#{user[:check_time]}"]
            if top_5.include?(user_line)
                puts "You are on Top 5"
            else
                puts "You couldn't make Top 5"
            end
        }
    else
        puts "You are wrong"
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
do_again = false
arr2_csv = []

###########  Start  ##########

until quit
    user = {}
    user[:user_id] = validate_input("Enter ID you want to use", "You must enter a User ID")
    until the_user_wants_to_quit
        game_level = validate_input("Hello, you can choose game level\noption: [easy, medium, hard, quit]", "Invailed input")
        break if game_level == "quit" 
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
                    # do_again = true
                    # the_user_wants_to_quit = true
                end
            end
            leader_board = validate_input("Do you want to see leader boader\noption: [yes, no]", "Invailed input")
            if leader_board == "yes"
                CSV.open("easy_level.csv", "r") {
                    |csv| csv.each do |line|
                        arr2_csv << line
                    end
                    check_top_5 = arr2_csv.sort { |a, b| a[1].to_i - b[1].to_i }.take(5)
                    p check_top_5
                } 
                puts "Thank you for playing"
                the_user_wants_to_quit = true
            else
                puts "Thank you for playing"
                the_user_wants_to_quit = true
            end
    end
    quit = true
end

# update the csvs with the right data
# leaderboard_csv is updated with the new leaderboard_array




