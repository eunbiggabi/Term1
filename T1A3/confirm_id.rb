require 'stop_watch'
require 'csv'
require 'faker'

quit = false
confirmed = false
game_ready_to_start = false
other_input = false
user = {}
arr_csv = []


# def easy_level


    watch = StopWatch::Timer.new
    # easy_display = Faker::Lorem.sentence
    easy_display = "hi"

    # def is_equal (display, input)
    #     return display == input ? true : false
    # end

    # ready_to_go = false
    # until ready_to_go
    #     puts "Enter \"s\" when you ready to go"
    #     start_input = ""
    #     while start_input == ""
    #         start_input = gets.chomp.downcase
    #         if start_input == "s"
    #             game_ready_to_start = true 
    #         end
    #     end
    #     if game_ready_to_start
    #         system 'clear'
    #         puts easy_display
    #         watch.mark ## Check time
    #         easy_input = gets.chomp
    #         watch.mark ## Check time
    #         check = is_equal(easy_display, easy_input)
    #         if check 
    #             watch.mark
    #             puts check_time = watch.mark.join('').to_i.ceil
    #             # user[:check_time] = check_time
    #             # File.open("easy_level.csv", "a+"){
    #             #     |file| file.write("#{user_id},#{check_time}\n")
    #             # }
    #         else
    #             puts "your input is wrong"
    #         end
    #         ready_to_go = true
    #     end
    # end
    
# end

def before_start

end

def easy_display
    puts Faker::Lorem.sentence
end

def medium_one
    puts "#{Faker::Lorem.sentence} #{Faker::Lorem.sentence}"
end

def hard_one
    puts Faker::Lorem.paragraph
end


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
                puts easy_display
                watch.mark ## Check time
                easy_input = gets.chomp
                watch.mark ## Check time
                check = is_equal(easy_display, easy_input)
                if check 
                    watch.mark
                    check_time = watch.mark.join('').to_i.ceil
                    user[:check_time] = check_time
                    puts "#{user_id} made #{check_time} seconds"
                    ####################
                    # File.open("easy_level.csv", "a+"){
                    #     |file| file.write("#{user_id},#{check_time}\n")
                    # }
                    # CSV.open("easy_level.csv", "r") {
                    #     |csv| csv.each do |line|
                    #         # if line[1].to_i < game_level[level][1]
                    #         #     survivors << line
                    #         # end 
                    #         arr_csv << line
                    #     end
                    #     arr_csv.each {|user_time| puts "#{user_time[0]} made #{user_time[1]} seconds"}
                    # }
                    #####################
                else
                    puts "your input is wrong"
                end
                ready_to_go = true
            end
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