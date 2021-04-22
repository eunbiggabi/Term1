class Player
    attr_accessor :cards, :score
    attr_reader :name

    def initialize(name)
        @name = name
        @cards = []
        @score = 0
    end

end



