class QuestionsController < ApplicationController
  def ask
    @ask
  end

  def answer
    @userinput = params[:userinput]
    if @userinput == "I am going to work"
      @coachanswer = "Great!";
    elsif @userinput.ends_with?("?")
      @coachanswer = "Silly question, get dressed and go to work!"
    else
      @coachanswer = "I don't care, get dressed and go to work!"
    end
  end
end
