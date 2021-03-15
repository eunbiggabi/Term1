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

# puts citizen == "yes" ? "yes" : "no"

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

arr = [5, 22, 29, 39, 19, 51, 78, 96, 84]
i = 0

 while (i < arr.size - 1 && arr[i] < arr[i + 1]) 
     i += 1
     if (i < arr.size - 1 && arr[i] > arr[i + 1])
        # swap
         x = arr[i]
         arr[i] = arr[i + 1]
         arr[i + 1] = x 
         i = 0
     end
 end

print arr

# arr = [5, 22, 29, 39, 19, 51, 78, 96, 84]

# print arr.sort



  
