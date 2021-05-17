class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]

    if @question =~ /i am going to work/i
      @stupid_answer = "Great!"
    elsif @question.ends_with?("?")
      @stupid_answer = "Silly question, get dressed and go to work!"
    else
      @stupid_answer = "I don't care, get dressed and go to work!"
    end


  end
end
