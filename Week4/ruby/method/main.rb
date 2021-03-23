# def tie_my_shoes
#     puts "grab shoe laces"
#     puts "loop them around each other"
#     puts "pull know tight"
# end

# tie_my_shoes
# tie_my_shoes
# tie_my_shoes



# def cook(dish_name, cook_time)
#     show_heading(dish_name)
#     puts "Fill a saucepan with water"
#     puts "Place saucepan on stove"
#     puts "Bring saucepan to the boil"
#     puts "Add #{dish_name}"
#     puts "Cook for #{cook_time} minutes"
#     puts "Drain and serve"
# end

# def show_pasta_heading
#     puts "-----------------"
#     puts "How to cook pasta"
#     puts "-----------------"
# end

# def show_rice_heading
#     puts "-----------------"
#     puts "How to cook rice"
#     puts "-----------------"
# end

# def show_heading(dish_name)
#     puts "-----------------"
#     puts "How to cook #{dish_name}"
#     puts "-----------------"
# end

# show_heading("pasta")
# show_heading("rice")
# cook("rice", 12)

def add_and_subtract(a, b)
    return a + b, a - b
end

# x = add_and_subtract(5, 12)
# puts x
# p x

x, y = add_and_subtract(5, 12)
puts x
p y

# $name = "Matt"
# def print_name(name)
#     p $name.object_id
# end
# 글로벌 스콥보다는 예제처럼 네임이라는 아큐먼트를 만드는것이 좋다
# 클로벌은 위험함


def get_name
    print "Enher name"
    return gets.chomp
end

foo = get_name

print_name
puts "My name is #{name}"
