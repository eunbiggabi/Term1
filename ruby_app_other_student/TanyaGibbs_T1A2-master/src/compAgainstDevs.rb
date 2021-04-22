require 'colorize'
require 'tty-cursor'
require 'artii'
require "tty-prompt"
require 'test-unit'
require 'io/console'
require_relative 'compAgainstDevsGameClass'
require_relative 'compAgainstDevsCardClass'
require_relative 'compAgainstDevsPlayerClass'

@prompt = TTY::Prompt.new


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

@answer_cards = []
    
players = [
    Player.new("Human"),
    Player.new("cYbErTrOn2000"),
    Player.new("beep_boop"),
    Player.new("Err404")
]

def logo
    if ARGV[0] == "h"
        easter_egg = "Hackers!"
        ARGV.clear
    else
        easter_egg = "Developers!"
    end

    if ARGV[0] == "f"
        easter_egg1 = "The Universe"
        ARGV.clear
    else
        easter_egg1 = "Computers"
    end

    a = Artii::Base.new
    puts a.asciify(easter_egg1)

    a = Artii::Base.new
    puts a.asciify("      Against")

    a = Artii::Base.new
    puts a.asciify(     easter_egg)

print_with_pause("             
    
               Press any key to start.".colorize(:red))
               STDIN.getch

puts `clear`
end


def waits(time)
    num = time
    sleep_time = [(0.1), (0.5), (1.0), (1.5), (3.0)]
    sleep(sleep_time[num])
end

waits(2)
def print_with_pause(str, sleep_time = 0.09)
  chars = str.chars
  chars.each do |c|
    print c 
    sleep(sleep_time) # if sleep_time is float, unit is second
    end
  puts ""
end

def deletes(word)
    word.each_char do |char|
        print TTY::Cursor.backward(1)
        print TTY::Cursor.clear_char(1)
        sleep(0.09)
    end
end

def types(word)
    word.each_char do |char|
        print char
        sleep(0.07)
    end 
end

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
print_with_pause("You are now Player 1.".colorize(:red)) 
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


while game_alive
    case main_menu
        when 1 
            print_with_pause("Loading Game rules...".colorize(:red))
            waits(2)
            puts `clear`
            game_rules = "Game rules"
            game.game_rules
        when 2
            print_with_pause("Showing High Scores...".colorize(:red))
            waits(2)
            puts `clear`
            game.show_scores
        when 3 
            puts `clear`
            print_with_pause("Starting New Game...".colorize(:red))
            waits(2)
            puts `clear`
            reset_answer_cards
            game.play_game(@answer_cards)
        when 4
            game_alive = false
    end
end