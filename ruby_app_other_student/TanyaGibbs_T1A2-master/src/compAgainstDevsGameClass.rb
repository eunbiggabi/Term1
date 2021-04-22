require_relative 'compAgainstDevsCardClass'

# Defining Game classes. All instance variables and game_play methods are located here.
class Game 
    attr_accessor :answer_cards
    attr_reader   :question_cards, :hand_size, :players

    def initialize(question_cards, players, hand_size)
       
        @question_cards = question_cards
        @answer_cards = nil
        @hand_size = hand_size
        @players = players

        if question_cards == nil
            raise "Question card deck cannot be empty"
        end 

    end

    # Dealing cards to each player
    def deal_hand
        dealt = 0
        while dealt < @hand_size 
            for player in @players
               player.cards.push(deal_answer_card)
            end 
            dealt = dealt + 1
        end
        return @players
        
    end

    # Getting card out of question_cards array and assigning it to q_card
    # Removing the card index out of the array
    # returning q_card
    def get_question
        index = rand(@question_cards.count)
        q_card = @question_cards[index]
        @question_cards.delete_at(index)
        return q_card.value
    end

    # Show the cards in a players hand. If the card ID (number of cards player has) is less than the number of cards that should be allocated, another card is dealt. This loops around for each of the players until they have the right amount of cards as indicated by the hand_size argument.
    # Once the hand size is met, the loop breaks.
    def show_hand(player_ID)
        card_ID = 0
        print_with_pause("Here are your cards...".colorize(:red))
        print_with_pause("Choose wisely.".colorize(:red))
        waits(2)
        puts `clear`
        while card_ID < @players[player_ID].cards.length
            line_number = card_ID + 1
            puts (line_number.to_s + ". " + @players[player_ID].cards[card_ID].value).colorize(:black).on_white
            card_ID = card_ID + 1
        end
    end

    def deal_card(cards)
        if cards && cards.length() > 0
            index = rand(cards.count)
            this_card = cards[index]
            cards.delete_at(index)

            return this_card
        else 
            raise "No cards remaining!"
        end
    end

    def  deal_question_card
       return deal_card(@question_cards)
    end 

    def deal_answer_card
       return deal_card(@answer_cards)
    end

    def space
        puts ""
    end

    def play_game(game_cards)
        
        @answer_cards = game_cards
        deal_hand
        loop_count = 0
        3.times do
            show_hand(0)
            space
            question = get_question()
            waits(2)
            print_with_pause("The question for this round is:".colorize(:red))
            space
            puts question
            waits(3)
            space
            print_with_pause("What answer do you choose?".colorize(:red))
            round_answer = gets.chomp
            space
            print_with_pause("Your answer combination is:".colorize(:red))
            waits(1)
            answer = ""
            card_ID = 0
            while card_ID < @hand_size
                if round_answer.to_i == card_ID + 1
                    answer = @players[0].cards[card_ID].value
                    @players[0].cards.delete_at(card_ID)
                    break
                end
                card_ID = card_ID + 1
            end
            waits(1)
            question["_____"] = answer
            space
            puts question
            space
            waits(3)
            loop_count = loop_count + 1
            if loop_count < 3
                print_with_pause("Press Enter to start next round".colorize(:red))
                gets.chomp
                puts `clear`
            end

        
            x = rand(@players.count)
            @players[x].score += 10 
            
        end
        show_winner
    end

    # Calculating whether the human player or one of the computer players has won.
    def show_winner
        human_winner = true
        for pl in 1..3 do
            if @players[pl].score > @players[0].score
                human_winner = false    
            end        
        end
        if human_winner
            a = Artii::Base.new
            puts a.asciify("Congrats!").colorize(:red)
            space
            print_with_pause("       You have beat the computers. ".colorize(:red))
            waits(3)
        else
            a = Artii::Base.new
            puts a.asciify("DEFEAT").colorize(:red)
            space
            print_with_pause("You are no match for machines! Enjoy crying yourself to sleep tonight!".colorize(:red))
            waits(3)
        end
        print_with_pause("     Press Enter to go back to Main Menu".colorize(:red))
        gets.chomp
        puts `clear`
    end

    def game_rules
        puts "Computers Against Developers is based on everyone's favourite game, Cards Against Humanity. \n \nRULES: \nThe Code Master (the computer) deals 7 cards to each player.\n\nThe Code Master then draws a question card, and each player (both human and computer) submits one of their answer cards.\n\nThe Code Master then chooses a winner for the round, and 10 points are allocated to the winning player.\n\nAfter all rounds have been executed, the total scores are calculated, and the game ends.\n".colorize(:white)
        space
        waits(3)
        print_with_pause("Press Enter to go back to Main Menu".colorize(:red))
        gets.chomp
        puts `clear`
    end
    def show_scores
        for i in 0..3 do
            puts @players[i].name + " " + @players[i].score.to_s
        end
        space
        waits(3)
        print_with_pause("Press Enter to go back to Main Menu".colorize(:red))
        gets.chomp
        puts `clear`
    end
end