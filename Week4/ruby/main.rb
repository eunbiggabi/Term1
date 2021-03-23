# time = 8
# good_student = true

# if time > 10 || !good_student
#     puts "You're late"
# elsif time == 10
#     puts "Right on time"
# else
#     puts "Good moring"
# end

# number = 4
# if number > 3 then puts "Greater than 3" end

# print "Enter you name: "
# name = gets
# # puts "Hello, #{name}"
# value = 42
# puts value.class




# 1.
# puts "What's the weather today?"

# weather= gets.chomp

#  if weather.to_i < 15
#     puts "It's too cold"
# elsif weather.to_i >= 15 && weather.to_i <= 28
#     puts "It's beautiful today"
# else 
#     puts "It's too hot"
# end

# 2.
# puts "What time is it?"

# time = gets.chomp.to_i

# if time > 6 && time < 12
#     puts "Good morning"
# elsif time == 12 
#     puts "Lunch time"
# elsif time > 12 && time < 19
#     puts "Afternoon blues"
# elsif time == 19 || time == 20
#     puts "Dinner time"
# elsif time > 20 || time < 7 
#     puts "Sleepy time"
# else 
#     puts "That is not corret 24hr time"
# end


# 3.1
# score = 70

# puts score >= 70 ? "hooray! you passed" : "sorry, try again next time"

# 3.2

# print "How old are you? "

# old = gets.chomp.to_i

# print "Are you a citizen? "

# citizen = gets.chomp

# puts citizen == "yes" ? "You are eligible to vote!" : "You are ineligible to vote"

# puts "The temperature in celsius is: "
# celsius = gets.chomp.to_i
# fahrenheit = (celsius * 9 / 5) + 32
# print "The result is: "
# print fahrenheit
# print "."



# puts "The temperature in celsius is: "
# celsius = gets.chomp
# fahrenheit = (celsius.to_i * 9 / 5) + 32
# print "The result is: "
# print fahrenheit
# print "."

# arr = [5, 22, 29, 39, 19, 51, 78, 96, 84]
# i = 0

#  while (i < arr.size - 1 && arr[i] < arr[i + 1]) 
#      i += 1
#      if (i < arr.size - 1 && arr[i] > arr[i + 1])
#         # swap
#          x = arr[i]
#          arr[i] = arr[i + 1]
#          arr[i + 1] = x 
#          i = 0
#      end
#  end

# print arr

# arr = [5, 22, 29, 39, 19, 51, 78, 96, 84]

# print arr.sort

# arr = [5, 22, 29, 39, 19, 51, 78, 96, 84]
# i = 0

#  while (i < arr.length) 
#      i += 1
#      if(arr[i] > arr[i + 1])
#         # swap
#          letSwap = arr[i]
#          arr[i] = arr[i + 1]
#          arr[i + 1] = letSwap
#          i = 0
#      end
#  end

# print arr

# updated_shopping_list = [apple, orange, carret, cucumber, banana]

# time = 8
# good_student = true

# if time > 10 || !good_student
#     puts "You're late"
# elsif time == 10
#     puts "Right on time"
# else
#     puts "Good moring"
# end

# number = 4
# if number > 3 then puts "Greater than 3" end

# print "Enter you name: "
# name = gets
# # puts "Hello, #{name}"
# value = 42
# puts value.class

# print "Enter a cardinal dirction(N, S, E, W)"


# direction = gets.chomp.upcase
# case direction
# when "N"
#     puts "North"
# when "S"
#     puts "South"
# when "E"
#     puts "East"
# when "W"
#     puts "West"
# else 
#     puts "no where"
# end

# age = 100
# case age
# when 1..12
#     puts "Child"
# when 13..17
#     puts "Teenager"
# when 18..1/0.0
#     puts "Adult"
# end

# bright = false

# puts bright ? "Turn donw the lights" : "It's dark in here"

# numbers = [4, 5, 3, -7, 20, 0]
# value = 5
# check = numbers.include? value
# puts check ? "Found in array" : "Not found in array"

# names = ["lin", "nandini", "carl", "zeb", "janel", "varsha", "lavanya"]

# i = 0;
# while i < names.length
#     i++

# p names[i]
# check = is_name_in_arry.include? names.name
# put check ? "Found in array" : "Not found in array"


# names = ["lin", "nandini", "carl", "zeb", "janel", "varsha", "lavanya"]

# value = "foo"
# names.each do |name|
#      if name == value.downcase
#         puts "Found in array" 
#         break
#      else
#         puts "Not found in array" 
#         break
#   end
# end

# grocery_list.each_with_index do |item, index|
#     puts "#{index+1}. #{item}"
# end

# scores = [97, 42, 75]
# p scores.delete_if {|score| score < 80} 



# puts "finished"

# a = ["a", "b", "c", "d"]
# a.fill {|val| val + 1}
# p a.join("")

# x = a.join
# p x.split()

# # explicitly assigning vales to variables 
# a = "Hello World"
# b = 2
# c = true
# d = [1, "hi", false, 2.0]
# e = { :name => "Alice", :age => 30}
# f = :bye


# # printing class of the variables
# puts "#{a} : #{a.class}"
# puts "#{b} : #{b.class}"
# puts "#{c} : #{c.class}"
# puts "#{d} : #{d.class}"
# puts "#{e} : #{e.class}"
# puts "#{f} : #{f.class}"


    
# books_array = [{
#     title: "Harry Potter",
#     author: "J.K.Rowling",
#     year: 1997
# },
# {
#     title: "Carry Potter",
#     author: "kyu",
#     year: 1984
# },
# {
#     title: "Hot Potter",
#     author: "chloe",
#     year: 2016
# }]
  
# books_array.each do |book| 
#     print "#{book[:title]} by #{book[:author]} (#{book[:year]})\n"
# end


# raining = [ "yes", "no" ] 

# puts "Hey there, is it raining right now? (yes or no)"
# raining= gets.chomp.downcase

# puts "what is the temperature in celsius right now? (number)"
# temperature_celsius = gets.chomp.to_i

# if raining == "yes" && temperature_celsius < 15 
#     print "It’s wet and cold" 
# elsif raining == "no" && temperature_celsius < 15
#     print "It’s not raining but cold"
# elsif raining == "no" && temperature_celsius >= 15 
#     print "It’s warm but not raining"
# else 
#     print "It’s warm and raining"
# end


# def get_last_two_names(names)
#     return names.last(2) 
# end
# puts get_last_two_names(["sara", "james", "martha", "charlie"])
# puts get_last_two_names(["sara", "james"])
# puts get_last_two_names([])


# puts 2 + nil == error

# name = []
# puts name.length

#Your code here
# def facebook_likes(names)
    
#         if(names.empty?)
#             puts "\"No one likes this\""
#         elsif(names.length == 1)
#             puts "\"#{names[0]} likes this\""
#         elsif(names.length == 2)
#             puts "\"#{names[0]} and #{names[1]} like this\""
#         elsif(names.length == 3)
#             puts "\"#{names[0]}, #{names[1]} and #{names[2]} like this\""
#         else
#             puts "\"#{names[-1]}, #{names[-2]} and #{names.length} others like this\""
#         end
    

# end

# facebook_likes([])

# facebook_likes(["Alex"])



# facebook_likes(["Alex", "Nandini"])

# facebook_likes(["Alex", "Garret", "Paul"])

# facebook_likes(["Alex", "Garret", "Paul", "Aleisha", "Sarah", "Macey"])


# coding_skill_score = {
#     python: 1,
#     ruby: 2,
#     bash: 4,
#     git: 8,
#     html: 16,
#     tdd: 32,
#     css: 64,
#     javascript: 128
# }

# scores_array = coding_skill_score.values.to_a


# #Welcome message
# puts "What is your coding skills"
# print "Here are the possible scores for coding tested\n"
# print scores_array
# puts '.'

# puts "Please type your max score to find out what coding skill you are"

# # Find the coding skills based on max score


# def coding_skill
# items = []
# score = gets.chomp.to_i
#     while score > 0 do
#         coding_skill_score.each do |key, value|
#             if value <= score and 2 * value > score
#                     items.push(key)
#                     score -= value
#             else
#                     next
#             end
#         end
#     end
# puts "your score is: " 
# return items
# end

# puts coding_skill()

# coding_skill_score = {
#     python: 1,
#     ruby: 2,
#     bash: 4,
#     git: 8,
#     html: 16,
#     tdd: 32,
#     "css" => 64,
#     javascript: 128
# }


# def get_skills(skill)
#     return skill.keys
# end 

# def get_score(score, key)
#     return score[key]
# end


# puts "Check your overall coding skills"
# puts get_skills(coding_skill_score)
# puts "Enter what you can do?"
# prompt = gets.chomp.downcase
# if coding_skill_score.include?(prompt.to_s)
#     puts "The #{prompt} is weighted as a #{get_score(score, key)} in ACME Corporation"
# else
#     puts "You entered an invalid coding skill"
# end

# puts get_skills()
# puts get_score()



# scores_array = coding_skill_score.values.to_a



def get_input(num)
    arr = []
    num.times { arr.push(gets.chomp) }
    return arr
end



puts "Enter how many you can do among these list (type number)"
puts num = gets.chomp.to_i 
get_input(num)




# puts "enter your name"
# puts a = gets.chomp
# puts b = gets.chomp
# puts c = gets.chomp
# puts d = gets.chomp
# puts a 
# puts b 
# puts c
# puts d












