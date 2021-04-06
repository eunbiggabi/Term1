require 'stop_watch'
require 'csv'
require 'faker'

quit = false
confirmed = false
game_ready_to_start = false
other_input = false
leader_board = false
user = {}
arr_csv = []
arr2_csv = []


# def easy_level


    watch = StopWatch::Timer.new


# def medium_one
#     return "#{Faker::Lorem.sentence} #{Faker::Lorem.sentence}"
# end

# def hard_one
#     return Faker::Lorem.paragraph
# end

# def leader(board)
#     p board
# end


# game = GameD.new
# game.easy_display
# game.medium_one

def is_equal (display, input)
    return display == input ? true : false
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

        level_input = gets.chomp.downcase
        case level_input
        when "quit"
            quit = true
        when "easy"
        ###################
        ready_to_go = false
        until ready_to_go
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
                puts easy_display = Faker::Lorem.sentence
                watch.mark ## Check time
                easy_input = gets.chomp
                watch.mark ## Check time
                puts check = is_equal(easy_display, easy_input)
                if check 
                    watch.mark
                    check_time = watch.mark.join('').to_i.ceil
                    user[:check_time] = check_time
                    puts "#{user_id} made #{check_time} seconds"
                    ####################
                    File.open("easy_level.csv", "a+"){
                        |file| file.write("#{user_id},#{check_time}\n")
                    }
                    CSV.open("easy_level.csv", "r") {
                        |csv| csv.each do |line|
                            arr_csv << line
                        end
                        top_5 = arr_csv.sort { |a, b| a[1].to_i - b[1].to_i }.take(5)
                        p top_5
                        user_line = ["#{user_id}", "#{check_time}"]
                        if top_5.include?(user_line)
                            puts "You are on Top 5"
                        else
                            puts "You couldn't make Top 5"
                        end
                    }
                else
                    puts "your input is wrong"
                end
                ready_to_go = true
            end
#############################
            leader_board_option = ""
                while leader_board_option == ""
                    puts "Do you want to see leader board?"
                    puts "option: [ yes, no ]"
                    leader_board_option = gets.chomp.downcase
                    if leader_board_option == "yes"
                        leader_board = true
                    else
                        puts "Thank you for playing"
                    end
                end
                if leader_board
                    CSV.open("easy_level.csv", "r") {
                        |csv| csv.each do |line|
                            arr2_csv << line
                        end
                        check_top_5 = arr2_csv.sort { |a, b| a[1].to_i - b[1].to_i }.take(5)
                        p check_top_5
                    } 
                end

#############################
        end
        ###################
        when "medium"
            medium_one
        when "hard"
            hard_one
        else
            puts "Incorrect Option, Try again"
        end
            quit = true
    end
end