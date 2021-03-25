# arr = [1,2,3,4,5]

# arr.each do |num|
#     puts num + 5
# end

# arr.each {|num| puts num + 5}

# def do_something
#     puts "started do_something"
#     yield
#     yield
#     puts "finshed do_something"
# end

# do_something{ puts "hello world" }
# do_something{ puts "goodbye" }

# def add(num1, num2)
#     yield num1 + num2
# end

# add(5, 10) {|answer| puts "The answer is #{answer}"}

def add(num1, num2)
        return num1 + num2
    end
    
puts "The answer is #{add(5, 10)}"
