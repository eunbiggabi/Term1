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

def arr_coding_skill(skills)
    return skills.keys
end

def get_number_of_times(numbers)
    # puts "Enter which coding skills you have"
    arr = []
    numbers.times { arr << gets.chomp }
    what_you_can_do = arr.map { |char| char.to_sym }
end

def get_score(score, list_of_keys)
    total = 0 
    list_of_keys.each do |key|
    total += score[key]
    end
    return total 
end
def get_requirements(requirements, list_of_keys)    
    return requirements.delete_if {|req| list_of_keys.include?(req)}
end


p arr_coding_skill(coding_skill_score)
puts "How many you can do among these skills(Type number)"
get_number_only = gets.chomp.to_i
get_list_of_keys = get_number_of_times(get_number_only)
p get_score(coding_skill_score, get_list_of_keys)
puts what_you_need = get_requirements(coding_skill_score.keys, get_list_of_keys)


