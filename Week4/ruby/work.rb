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




# puts coding_skill_score.keys
# list = get_skills(coding_skill_score)
# puts "Enter how many you can do among these list (type number)"
# num = gets.chomp.to_i 
# puts "Enter what you can do (type one by one)"
# list_keys = get_input(num)
# puts "Your overall score for ACME Corporation is #{get_score(coding_skill_score, list_keys)}"

class Dog
    attr_accessor :name, :breed, :age
    attr_writer :name

    def initialize(name, breed, age)
        @name = name
        @breed = breed
        @age = age
        @walks = []
    end

    def walk(distance_in_kms)
        @total_distance = 0
        @walk << distance_in_kms
    end

    def walked_distance
        return @walk.sum
    end

    def display_walks
        puts "#{@name} has had #{@walks.length} and walked #{walked_distance} kms today"
        @walks.each_with_index do |walk , index|
            puts "#{index-1}. #{walk}"
        end
    end

end

doggo = Dog.new("Roy", "Labrador", 8)
doggo.walk(2)
doggo.walk(1)
doggo.display_walks