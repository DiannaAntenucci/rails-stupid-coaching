class QuestionsController < ApplicationController
    def ask
    end

    def answer
        @coach_answer = ""
        if params["response"].downcase == "I am going to work"
            @coach_answer = "Great!"
        elsif params["response"].include? "?"
            @coach_answer = "silly question, get dressed and go to work!"
        else
            @coach_answer = "I don't care, get dressed and go to work!"
        end
    end
end
