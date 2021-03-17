# x = {
#     :name => "Matt",
#     :age => 48
# }
# x[:age] = 49
# p x[:name], x[:age]

people = [
    {
    name: "Matt",
    emails: "foo@bar.com",
    :age => 48,
    :hobbies => ["gaming", "reading", "movies"],
    :address => {
        :number => 12,
        :street => "Wherever",
        :postcode => 4400
        }
    },
    {
        :name => "Alice",
        :age => 30,
        postcode: 4000,
        :emails => "kyu@foo.com"
    }
]

# p "Hobbies: #{people[0][:hobbies].join(", ")}"

# p people[0].has_key? :age 
# p people[0].has_value? "foo"
# p people[0].keys
# p people[0].values
# # people[0].delete :age
# p people[0].values[3].values
# emails = people.map {
#     |person| person[:email]
# }
# p emails

# arr = [1,2,3,4,5]
# arr.each {|x| puts x}

# arr = [1,2,3,4,5]
# arr.map!{|x| x ** 2}
# p arr

# arr = [1,2,3,4,5]
# arr2 = arr.map{|x| x ** 2}
# p arr2

# arr = [1,2,3,4,5]

# p arr.select {|x| x.odd?} 
# p arr.select do |x|
#      x.odd?
# end

# people[1][:hobbies] = ["hiking", "skydiving", "dirt biking"]
# p people[1]

# p arr.find {|x| x.odd?}
# p people.find { |person| person[:name] == "Matt"}
# p people.find { |person| (4000..4999).include? person[:address][:postcode]}

input = "hellow world"

p input.split("")