require_relative "animal"

class Cat < Animal

    # include Swimmable

    @@number_of_cats = 0

    def initialize(name, breed)
        super(name, breed)
        @@number_of_cats += 1
    end

    # def increment_total
    #     @@number_of_cats += 1
    # end 

    # def swim
    #     return "I'm swiming!"
    # end

    def speak
        return "#{@name} says Meow!"
    end

    def total_cats
        return @@number_of_cats
    end

    # def to_s
    #     return "#{@name} is a #{@breed}"
    # end
        
end