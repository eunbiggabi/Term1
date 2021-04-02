class RandomSentence

    def initialize
        
    end

    def sentences_beginner 
    [
        ["I am super strong"],
        ["So cool guys"],
        ["Hello World"],
        ["Who am I"],
        ["My name is Kyu"]
    ]
    end 

end

class IsCorrect
    attr_accessor :word_display, :word_input

    def initialize(word_display, word_input)
        @word_display = word_display
        @word_input = word_input
    end

    def is_equal
        p @word_display == @word_input ? true : false
    end
end

def sentence_random_sort(words)
    words.each { |word| return word }    
end


game = RandomSentence.new


loop do
    puts "Do you want to start typing-game? (Y/N)"
    answer = gets.chomp.downcase
    break if answer != "y"
    puts @word_display = game.sentences_beginner.sample.join('')
    @word_input = gets.chomp
    check = IsCorrect.new(@word_display, @word_input)
    check.is_equal 
end