


# arr = [["Glen", "3"], ["Sam", "1"], ["Chloe", "7"], ["Sammi", "14"]]
# test = ["Glen", "3"]

# p arr.sort{ |a, b| a[1].to_i > b[1].to_i ? 1 : -1}
# p arr.sort { |a, b| a[1].to_i - b[1].to_i }

def validate_input(message, incorrect_message)
    user = {} 

    input = ""
    while input == ""
        puts message
        input = gets.chomp
        if input == ""
            puts incorrect_message
        else
            user[:input] = input
        end
    end
    return user
end


validate_input("Enter ID", "MUST enter")
