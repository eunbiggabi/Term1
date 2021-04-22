require "test/unit"
require './compAgainstDevsGameClass.rb'
require './compAgainstDevsCardClass.rb'
require './compAgainstDevsPlayerClass.rb'

class CompAgainstDevsTest < Test::Unit::TestCase

    def test_world
        answer_cards = [
            Card.new("Browsing StackOverflow for hours without actually looking for a solution"),
            Card.new("Facebook identity theft"),
        ]

        players = [
            Player.new("Human"),
            Player.new("cYbErTrOn2000"),
            Player.new("beep_boop"),
            Player.new("Err404")
        ]

        question_cards = [
            Card.new("After ten years working as a developer I am addicted to _____."),
            Card.new("Fixing your father’s computer with _____."),
        ]

        game = Game.new(question_cards, players, 7)
        assert_equal game.question_cards, question_cards, "Questions cards are set"
    end

    def test_player_name_access
        name = "Human"
        player = Player.new(name)
        assert_equal player.name, name, "Names should be equal"
    end 

    def test_player_cards_initialised_empty
        player = Player.new("Yolo")
        assert_equal player.cards, [], "Player should be initialised with an empty array"
    end 
    
    # def test_flunk
    #     flunk "You shall not pass"
    # end

end