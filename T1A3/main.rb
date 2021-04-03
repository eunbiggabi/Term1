require 'stop_watch'
require 'csv'

    def is_equal (display, input)
        return display == input ? true : false
        # p @word_display
        # p @word_input
    end

watch = StopWatch::Timer.new
users = {}
survivors = []

# get ID

# file = File.open("users.csv", "a")
# file << "#{users[:user_id]}\n"

def game_level(level)
    case level.downcase
    when == "easy" 
        def easy_level
            [
                ["I am super strong"],
                ["So cool guys"],
                ["Hello World"],
                ["Who am I"],
                ["My name is Kyu"]
            ]
        end
    when == "medium" 
        def medium_level
            [
                ["medium I am super strong"],
                ["medium So cool guys"],
                ["medium Hello World"],
                ["medium Who am I"],
                ["medium My name is Kyu"]
            ]
        end
    when == "hard"
        def hard_level
            [
                ["hard medium I am super strong"],
                ["hard medium So cool guys"],
                ["hard medium Hello World"],
                ["hard medium Who am I"],
                ["hard medium My name is Kyu"]
            ]
        end
    else
        puts "Invalid input"
    end
end

begin
    puts "Enter ID you want to use"
    user_id = gets.chomp
    users[:user_id] = user_id
    puts "Hello #{users[:user_id]}, you can choose game level"
    puts "option: [easy, medium, hard]"
    level = gets.chomp
    puts "Type what you can see on the screen (case-sensitive)"
    puts "Press \"s\" when you ready to go"
    input = gets.chomp.downcase
    system 'clear'
    if input == "s"
        watch.mark
        puts word_display = easy_level.sample.join('')
        word_input = gets.chomp
        # stop-watch stop
        check = is_equal(word_display, word_input)
        if check 
            watch.mark
            check_time = watch.mark.join('').to_i.ceil
            users[:check_time] = check_time
            File.open("users.csv", "a+"){
                |file| file.write("#{user_id},#{check_time}\n")
            }
                
            CSV.open("users.csv", "a+") {
                |csv| csv.each do |line|
                    if line[1].to_i < 10
                        survivors << line
                    end    
                end
                survivors.each {|ranking| puts "#{ranking[0]} made #{ranking[1]} seconds"}
            }
        else
            puts "Incorrect input"
        end
    end 
end