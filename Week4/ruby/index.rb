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
    # list_of_keys.each do |key|
    #     requirements.include?(key) ? requirements.filter {|char| char != key} : requirements      
    # end
    return requirements.delete_if {|req| list_of_keys.include?(req)}
    
end

def show_result(requirements, you_need)
    you_need.each do |key|
        # requirements.include?(key) ? requirements[key] : requirements      
        requirements.include?(key) ? "yes" : "no"     
    end
end

puts coding_skill_score.keys
list = get_skills(coding_skill_score)
puts "Enter how many you can do among these list (type number)"
num = gets.chomp.to_i 
puts "Enter what you can do one by one"
list_keys = get_input(num)
puts "Your overall score for ACME Corporation is #{get_score(coding_skill_score, list_keys)}"
puts what_you_need = get_requirements(list, list_keys)
puts show_result(coding_skill_score.keys, what_you_need)


p list
p list_keys
p what_you_need
p coding_skill_score.keys


# kyu = [:css, :tdd, :git]
# bong = [:fok]

# bong.each do |char|
#     puts kyu.include?(char) ? kyu.filter {|ch| ch != char} : kyu
# end




