coding_skill_score = {
    python: 1,
    ruby: 2,
    bash: 4,
    git: 8,
    html: 16,
    tdd: 32,
    css: 64,
    javascript: 128
}

def get_input(num)
    arr = []
    num.times { arr.push(gets.chomp) } 
    arr.map! { |char| char.to_sym }
    return arr
end

def get_score(score, list_of_keys)
    total = 0
    list_of_keys.each do |key|
        total += score[key]
    end
    return total
end

def get_skills(skill)
    skill.keys
end

def get_requirements(requirements, list_of_keys)
    return requirements.delete_if {|req| list_of_keys.include?(req)}
end

def show_result(requirements, you_need)
    num_array = []
    you_need.each { |item| num_array.push(requirements[item])}
    p num_array
end


puts coding_skill_score.keys
list = get_skills(coding_skill_score)
puts "Enter how many you can do among these list (type number)"
num = gets.chomp.to_i 
puts "Enter what you can do (type one by one)"
list_keys = get_input(num)
puts "Your overall score for ACME Corporation is #{get_score(coding_skill_score, list_keys)}"
puts what_you_need = get_requirements(list, list_keys)
show_result(coding_skill_score, what_you_need)
puts "The rest of the skills shown above are required from the ACME Corporation, and weighted as following numbers cheer up~!"

# def num_only(number)
#     if (number.class == Numeric)
#         puts "yes"
#     else
#         puts "no"
#     end
# end

# puts "Enter number"
# num = gets.chomp.to_i
# num_only(num)
# puts "ksdjahkgjhas"




# p list
# p list_keys
# p what_you_need
# p coding_skill_score.keys

# 25.times { print "-" }
# puts "-"

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
# target = [:css, :tdd, :git, :python, :ruby]

# # puts coding_skill_score[target[0]]
# # puts coding_skill_score[target[2]]

# # target.each { |item| puts coding_skill_score[item] }

# def check(skill, score)
#     score.each { |s| puts skill[s] }
# end
# check(coding_skill_score, target)




