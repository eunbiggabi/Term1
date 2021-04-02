class IsCorrect
    attr_accessor :word_display, :word_input

    def initialize(word_display, word_input)
        @word_display = word_display
        @word_input = word_input
    end

    def is_equal
        p @word_display == @word_input ? true : false
        p @word_display
        p @word_input
    end
end

def sentence_random_sort(words)
    words.each { |word| return word }    
end


puts sentence = sentence_random_sort(["Hi, I am Kyu", "Hello, World", "I am super Strong"].shuffle)
input = gets.chomp
check = IsCorrect.new(sentence, input)
puts check.is_equal

kyu = ["Hello, World"]
p kyu.join("")