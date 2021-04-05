# require 'stop_watch'
# require 'csv'

# # def make_user_id
    
# # end


# quit = false
# users = {}

# puts "Typing game will help you to learn how to type"
# puts "Type what you can see on the screen (Case-sensitive)"
# # puts "Keep in mind that any you can exit entering 'quit'"
# puts "Enter ID you want to use"
# user_id = ""
# while user_id == ""
#     user_id = gets.chomp
#     users[:user_id] = user_id
#     if user_id == ""
#         puts "You must enter a User ID"
#     end
#     puts "Your user ID is '#{users[:user_id]}'"
#     puts "option: [ yes, no ]"
#     until quit
#         conform_id = gets.chomp.downcase
#         if conform_id == "yes"
#             puts "Hello #{users[:user_id]}, you can choose game level" 
#             quit = true
#         elsif conform_id == "no"
#             puts "Enter ID you want to use"
#             user_id = gets.chomp
#             users[:user_id] = user_id
#             if user_id == ""
#                 puts "You must enter a User ID"
#             end
#             quit = true
#         else
#             puts "invalid inputs"
#         end
#     end
# end


# until quit
#     puts "option: quit"
#     input = gets.chomp.downcase
#     if input == "quit"
#         quit = true
#     end
# end

#################################################################

quit = false
confirmed = false
user = {}


while quit == false
    user_id = ""
    while user_id == ""
        # asking for first_id
        puts "Typing game will help you to learn how to type"
        puts "Type what you can see on the screen (Case-sensitive)"
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
            confirmed == false
        end
    end
    if confirmed == false
        # "your next game logic goes here"
        puts "Hello #{user[:user_id]}, you can choose game level"
        quit = true
    end
    
end

#################################################################

# quit = false
# confirmed = false
# user = {}

# while quit == false
#     puts "Typing game will help you to learn how to type"
#     puts "Type what you can see on the screen (Case-sensitive)"
#     puts "Enter ID you want to use"
#     user_id = ""
#     while user_id == ""
#         user_id = gets.chomp
#         user[:user_id] = user_id
#         if user_id == ""
#             puts "You must enter a User ID"
#             quit
#         end
#     end
# end


# quit = false
# confirmed = false
# user = {}


# while quit == false
#     while user_id == ""
#         # asking for first_id
#         puts "Typing game will help you to learn how to type"
#         puts "Type what you can see on the screen (Case-sensitive)"
#         user_id = ""
#         puts "Enter ID you want to use"
#         user_id = gets.chomp
#         if user_id == ""
#             puts "You must enter a User ID"
#         else
#             user[:user_id] = user_id
#         end
#     end
#     # Confirming id
#     confirm_id == ""
#     while confirm_id == ""
#         puts "Your user ID is '#{user[:user_id]}'"
#         puts "option: [ yes, no ]"
#         conform_id = gets.chomp.downcase
#         if conform_id == "yes"
#             confirmed = true
#         end
#     end
#     if confirmed
#     #   "your next game logic goes here"
#         puts "Hello #{users[:user_id]}, you can choose game level"
#     end
# end
# end