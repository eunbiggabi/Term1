require 'stop_watch'
require 'csv'

game_level = {
    "easy" =>  [[
                    ["I am super strong"],
                    ["So cool guys"],
                    ["Hello World"],
                    ["Who am I"],
                    ["My name is Kyu"]
                ], 10], 
    "medium" => [[
                    ["medium I am super strong"],
                    ["medium So cool guys"],
                    ["medium Hello World"],
                    ["medium Who am I"],
                    ["medium My name is Kyu"]
                ], 20],
    "hard"  =>  [[
                    ["hard medium I am super strong"],
                    ["hard medium So cool guys"],
                    ["hard medium Hello World"],
                    ["hard medium Who am I"],
                    ["hard medium My name is Kyu"]
                ], 30]
}

def is_equal (display, input)
    return display == input ? true : false
end

watch = StopWatch::Timer.new
users = {}
survivors = []

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
        puts word_display = game_level[level][0].sample.join('')
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
                    if line[1].to_i < game_level[level][1]
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