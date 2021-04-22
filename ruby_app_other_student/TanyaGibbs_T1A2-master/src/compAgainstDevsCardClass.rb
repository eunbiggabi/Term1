class Card
    attr_reader :value
    
    def initialize(card_text)
        @value = card_text
    end
end

class QuestionCard < Card
    def initialize(question_card)
        @question_card = question_card
    end
end

class AnswerCard < Card
    def initialize(answer_card)
        @answer_card = answer_card
    end
end
