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

# def get_input(num)
#     arr = []
#     num.times { arr.push(gets.chomp) } 
#     arr.map! { |char| char.to_sym }
#     return arr
# end

# def get_score(score, list_of_keys)
#     total = 0
#     list_of_keys.each do |key|
#         total += score[key]
#     end
#     return total
# end

# def get_skills(skill)
#     skill.keys
# end

# def get_requirements(requirements, list_of_keys)
#     return requirements.delete_if {|req| list_of_keys.include?(req)}
# end

# def show_result(requirements, you_need)
#     num_array = []
#     you_need.each { |item| num_array.push(requirements[item])}
#     p num_array
# end


# puts coding_skill_score.keys
# list = get_skills(coding_skill_score)
# puts "Enter how many you can do among these list (type number)"
# num = gets.chomp.to_i 
# puts "Enter what you can do (type one by one)"
# list_keys = get_input(num)
# puts "Your overall score for ACME Corporation is #{get_score(coding_skill_score, list_keys)}"
# puts what_you_need = get_requirements(list, list_keys)
# show_result(coding_skill_score, what_you_need)
# puts "The rest of the skills shown above are required from the ACME Corporation, and weighted as following numbers cheer up~!"


#######################################

# def only_number (get_num_input)
#     puts get_num_input.class == Integer ? "sucees" : "fail"
# end

# puts "Enter how many"
# get_num_input = gets.chomp
# p get_num_input.class
# p get_num_input
# only_number(get_num_input)
# puts "Worng way go back"

# def create_phone_number(numbers)
   
#     # numbers.map! {|number| puts number.to_s}
#     front = numbers.slice(0, 3).join("")
#     middle = numbers.slice(3, 3).join("")
#     last = numbers.slice(6, 4).join("")

#     return "(#{front}) #{middle}-#{last}"

#     # numbers.join("")
# end


# p create_phone_number([1, 2, 3, 4, 5, 6, 7, 8, 9, 0])
# p create_phone_number([1, 1, 1, 1, 1, 1, 1, 1, 1, 1])
# p create_phone_number([1, 2, 3, 4, 5, 6, 7, 8, 9, 0])



# def unique_in_order(iterable)
#     to_arr = iterable.split("")
#     to_arr.filter {|nums, index, arr| arr.slice(index + 1).indexOf(nums) == -1}  
# end

# p unique_in_order('AAAABBBCCDAABBB') ## retrun ["a", "b", "c", "a", "b"]



