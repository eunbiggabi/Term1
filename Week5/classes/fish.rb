require_relative "animal"
require_relative "../modules/swimmable"

class Fish < Animal

    include Swimmable
    # def swim
    #     return "I'm swiming!"
    # end
end