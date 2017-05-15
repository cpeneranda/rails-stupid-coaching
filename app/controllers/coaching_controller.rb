class CoachingController < ApplicationController

    def ask
      @ask = ""
    end

    def answer
      @question = params[:question]
      @answer = coach_answer_enhanced(@question)
    end


    private

    def coach_answer(your_message)
  # TODO: return coach answer to your_message

        if your_message.include?("?")
          return "Silly question, get dressed and go to work!"
        elsif your_message == "I am going to work right now!"
          return ""
        else
          return "I don't care, get dressed and go to work!"
        end
      end

      def coach_answer_enhanced(your_message)
        basic_answer = coach_answer(your_message)
        if your_message == your_message.upcase
          if your_message == "I am going to work right now!".upcase
            return ""
          else
            return "I can feel your motivation! #{basic_answer}"
          end
        else
          return basic_answer
        end

      until your_message == "I am going to work right now!" || "I am going to work right now!".upcase
        puts coach_answer_enhanced(your_message) || coach_answer(your_message)
        puts "Que voulez vous dire au coach?"
        your_message = gets.chomp
      end

  end

end
