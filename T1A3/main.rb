# require 'stop_watch'
# require 'csv'

# game_level = {
#     "easy" =>  [[
#                     ["I am super strong"],
#                     ["So cool guys"],
#                     ["Hello World"],
#                     ["Who am I"],
#                     ["My name is Kyu"]
#                 ], 10], 
#     "medium" => [[
#                     ["medium I am super strong"],
#                     ["medium So cool guys"],
#                     ["medium Hello World"],
#                     ["medium Who am I"],
#                     ["medium My name is Kyu"]
#                 ], 20],
#     "hard"  =>  [[
#                     ["hard medium I am super strong"],
#                     ["hard medium So cool guys"],
#                     ["hard medium Hello World"],
#                     ["hard medium Who am I"],
#                     ["hard medium My name is Kyu"]
#                 ], 30]
# }

# def is_equal (display, input)
#     return display == input ? true : false
# end

# watch = StopWatch::Timer.new
# users = {}
# survivors = []
# invalid = true

# begin
#     puts "Survial helps you to learn how to type"
#     puts "Type what you can see on the screen (Case-sensitive)"
#     puts "Enter ID you want to use"
#     user_id = gets.chomp.capitalize
#     users[:user_id] = user_id
#     puts "Hello #{users[:user_id]}, you can choose game level"
#     puts "Each level has different time to sucess (#{game_level["easy"][1]}, #{game_level["medium"][1]}, and #{game_level["hard"][1]}) seconds, respectively"
#     puts "option: [easy, medium, hard]"
#     level = gets.chomp.downcase
#     puts "Enter \"s\" when you ready to go"
#     input = gets.chomp.downcase
#     system 'clear'
#     if input == "s"
#         watch.mark
#         puts word_display = game_level[level][0].sample.join('')
#         word_input = gets.chomp
#         # stop-watch stop
#         check = is_equal(word_display, word_input)
#         if check 
#             watch.mark
#             check_time = watch.mark.join('').to_i.ceil
#             users[:check_time] = check_time
#             File.open("#{level}.csv", "a+"){
#                 |file| file.write("#{user_id},#{check_time}\n")
#             }
                
#             CSV.open("#{level}.csv", "a+") {
#                 |csv| csv.each do |line|
#                     if line[1].to_i < game_level[level][1]
#                         survivors << line
#                     end    
#                 end
#                 survivors.each {|ranking| puts "#{ranking[0]} made #{ranking[1]} seconds"}
#             }
#         else
#             puts "Incorrect input"
#         end
#     end 
# end

# quit = false
# easy = false
# medium = false
# hard = false

# game_level = {
#     "easy" => false,
#     "medium" => false,
#     "hard" => false,
# }

# level = ["easy", "medium", "hard"]
# p game_level[:keys]
# until false
#     input = gets.chomp
#     case input
#     when "easy"
#         puts "sucess"
#         easy = true  
#     when "medium"
#         medium = true
#     when "hard"
#         hard = true
#     end
# end

####################################################

# quit = false


# until quit

#     until user != {}
#     end
#     puts "What would like to do?"
#     puts "option: [easy, medium, hard]"

#     input = gets.chomp.downcase
#     case input
#     when "quit"
#         quit = true
#     when "easy"
#         puts "easy"
#     when "medium"
#         puts "medium"
#     when "hard"
#         puts "hard"
#     else
#         puts "Incorrect Option, Try again"
#     end
# end
