require_relative 'compAgainstDevsGameClass'
require_relative 'compAgainstDevsCardClass'
require_relative 'compAgainstDevsPlayerClass'

# Logo
def logo

    a = Artii::Base.new
puts a.asciify("Computers")

a = Artii::Base.new
puts a.asciify("      Against")

a = Artii::Base.new
puts a.asciify("Developers!")

print_with_pause("             
    
               Press any key to start.".colorize(:red))
               STDIN.getch

puts `clear`
end

# Wait between each step
def waits(time)
    num = time
    sleep_time = [(0.1), (0.4), (1.0), (1.5), (3.0)]
    sleep(sleep_time[num])
end

# Typewriter effect of output
def print_with_pause(str, sleep_time = 0.01)
  chars = str.chars
  chars.each do |c|
    print c 
    sleep(sleep_time) # if sleep_time is float, unit is second
    end
  puts ""
end

# Deletes word
def deletes(word)
    word.each_char do |char|
        print TTY::Cursor.backward(1)
        print TTY::Cursor.clear_char(1)
        sleep(0.09)
    end
end

# Types new word to replace deleted word
def types(word)
    word.each_char do |char|
        print char
        sleep(0.09)
    end 
end

# Main menu using tty-prompt
def main_menu
    menu_choice = @prompt.select("Main Menu") do |menu|
      menu.enum "."
      menu.choice "View Rules", 1
      menu.choice "View High Scores", 2
      menu.choice "Start New Game", 3
      menu.choice "Exit", 4
    end
    return menu_choice
  end

  #   main_menu

#   def game_rules

#   end

#   def past_scores

#   end

# Reset answer cards array
@answer_cards = []
def reset_answer_cards
    @answer_cards = [
        Card.new("Browsing StackOverflow for hours without actually looking for a solution"),
        Card.new("Facebook identity theft"),
        Card.new("Extremely casual use of sudo"),
        Card.new("Failed sprints"),
        Card.new("My browsing history"),
        Card.new("Fluffy cat gifs"),
        Card.new("Listening to Nickelback"),
        Card.new("FizzBuzz"),
        Card.new("Rethoric comments in code"),
        Card.new("Sadness"),
        Card.new("Terminal magic"),
        Card.new("Sarcastic code review comments"),
        Card.new("The cult of Mac"),
        Card.new("Ruby"),
        Card.new("Turning it off and on again"),
        Card.new("Code comments written in a foreign language"),
        Card.new("Novice programmers"),
        Card.new("Syntax errors"),
        Card.new("Coding while spooning"),
        Card.new("GitHub"),
        Card.new("Comic Sans"),
        Card.new("Doing production deploys while drunk"),
        Card.new("Women in tech"),
        Card.new("Coding and drinking in equal proportions"),
        Card.new("Sad developers"),
        Card.new("Not giving a shit about future maintainers of your code"),
        Card.new("Equating coding skill with sexual prowess"),
        Card.new("Arrays"),
        Card.new("Programming drunk"),
        Card.new("Code without comments")
    ]
end

players = [
    # Player.new("User"),
    # Player.new("Steph"),
    # Player.new("Glen"),
    # Player.new("Matt")
]

question_cards = [
    Card.new("After ten years working as a developer I am addicted to _____."),
    Card.new("Fixing your father’s computer with _____."),
    Card.new("The previous developer left because of _____."),
    Card.new("But Google is using _____ so we should too!"),
    Card.new("Every time someone brings up _____, I throw up a little in my mouth."),
    Card.new("Implementing _____ should only take 2 lines of code."),
    Card.new("If you’re using _____, you’re gonna have a bad time."),
    Card.new("Only half of programming is coding. The other half is dealing with _____."),
    Card.new("I think maybe I’ll leave _____ off my resume."),
    Card.new("If _____ is the answer, you are asking the wrong question."),
    Card.new("_____: Easy one-step installation."),
    Card.new("Our release schedule has no time for _____."),
    Card.new("Restoring from backups failed due to _____."),
    Card.new("For a developer to graduate to senior level, they must be fluent in _____."),
    Card.new("_____ is a feature, not a bug"),
    Card.new("_____  as a service"),
    Card.new("My eyes started bleeding when I opened the editor and saw _____."),
    Card.new("Sad, but true: our team is addicted to _____.")
]

# Running the app
def run_app
    logo
    print_with_pause("Welcome.".colorize(:red))
    print_with_pause("What is your name?".colorize(:red))
    name = gets.chomp
    puts `clear`
    types("Hello Developer...".colorize(:red))
    deletes("Developer...")
    waits(1)
    types("#{name}. ")
    waits(1)
    print_with_pause("You are now player 1.".colorize(:red)) 
    waits(2)
    puts `clear`

    print_with_pause("Do you really think you can beat us?".colorize(:red))
    print_with_pause("(Yes) or (No)".colorize(:red))
    input = gets.chomp
        if input == "yes"
            puts `clear`
            print_with_pause("We'll see about that...".colorize(:red))
            waits(1)
            puts `clear`
        else input == "no"
            puts `clear`
            print_with_pause("I don't have much faith in you either...".colorize(:red))
            waits(1)
            puts `clear`
        end
    waits(1)
    puts `clear`
    print_with_pause("Lets begin...".colorize(:red))
    waits(2)

    game = Game.new(question_cards, players, 7)
    game_alive = true

    while game_alive
        case main_menu
            when 1 
                print_with_pause("Loading Game rules...".colorize(:red))
                puts `clear`
                game_rules = "Game rules"
                p game_rules
            when 2
                print_with_pause("Showing past scores...".colorize(:red))
                puts `clear`
                past_scores = past_scores
                p past_scores
            when 3 
                puts `clear`
                print_with_pause("Starting new game...".colorize(:red))
                puts `clear`
                reset_answer_cards
                game.play_game(@answer_cards)
            when 4
                game_alive = false
        end
    end
end