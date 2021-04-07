quit = false
quit2 = false
until quit
    puts "quit first one"
    until quit2
        puts "Sencond one"
        input = gets.chomp
        if input == "yes"
            quit = true
            quit2 = true
        else
            puts "hahaha"
            quit2 = true
        end
        
        
    end
end