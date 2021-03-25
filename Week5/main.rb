class Dog
    attr_accessor :name, :breed, :age

    def initialize(name, breed, age)
        @name = name
        @breed = breed
        @age = age
        @walks = []
    end

    def walk(distance_in_kms)
        return @walks << distance_in_kms
    end

    def walked_distance
        return @walks.sum
    end
    
    def display_walks
        puts "#{@name} has had #{@walks.length} walks and walked #{walked_distance} kms today:"
        @walks.each_with_index do |walk, index|
            puts "#{index + 1}. #{walk} km"
        end
    end
end

doggo = Dog.new("Roy", "Labrador", 8)
doggo.walk(2)
doggo.walk(1)
doggo.display_walks

