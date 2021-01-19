class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @my_question = params[:question]
    @coach_answer = if @my_question == 'I am going to work'
                      'Great!'
                    elsif @my_question[-1] == '?'
                      'Silly question, get dressed and go to work!'
                    else
                      "I don't care, get dressed and go to work!"
                    end
  end
end
