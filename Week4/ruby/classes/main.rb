class GoodDog

    attr_accessor :name 
    attr_reader :breed
    
    @@number_of_dogs = 0

    def initialize(name, breed)
        @name = name
        @breed = breed
        @owner = nil
        @vet_visits = []
        @@number_of_dogs += 1
    end

    def self.what_am_i
        return "i am a gooddog class"
    end

    def self.total_dogs
        return @@number_of_dogs
    end

    def speak
        return "#{@name} says Arf!"
    end
    
    def to_s
        return "#{@name} is a #{breed}"
    end
    # #Getter for @name
    # def name
    #     return @name
    # end

    # #Setter for @name
    # # def name(name)
    # #     @name = name
    # # end
    # def name=(name)
    #     # @name = name if name.length > 2
    #     @name = name if name.class == String
    # end

    # def breed
    #     return @breed
    # end

end

sparky = GoodDog.new("sparky", "poodle")
ted = GoodDog.new("ted", "border colie")
puts sparky.speak
puts ted.speak
ted.name = 23
ted.name = 45
puts ted.name
puts ted
puts GoodDog.what_am_i
puts GoodDog.total_dogs


# everything is object
# "hello"는 사실상 String.new가 생략된것이다.

