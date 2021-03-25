# require_relative "modules/swimmable"
# require_relative "classes/animal"
require_relative "classes/good_dog"
require_relative "classes/cat"
require_relative "classes/fish"

require "colorize"
require "http"

sparky = GoodDog.new("sparky", "poodle")
ted = GoodDog.new("ted", "border colie")
puts sparky.speak.colorize(:blue)
puts ted.speak.colorize(:red)
ted.name = 23
ted.name = 45
puts ted.name
puts ted
puts GoodDog.what_am_i
puts GoodDog.total_dogs

felix = Cat.new("Felix", "Siamese")
puts felix.speak
puts felix.total_cats
# puts felix.@@number_of_cats


# everything is object
# "hello"는 사실상 String.new가 생략된것이다.

nemo = Fish.new("Nemo", "Clownfish")
puts nemo.swim
puts ted.swim
# puts felix.swim

user = HTTP.get("https://randomuser.me/api")
user = JSON.parse(user.to_s)
puts user["results"][0]["name"]

