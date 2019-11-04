class QuestionsController < ApplicationController
  def ask
    @ask = params[:question]
  end

  def answer
    @message = params[:question]
    if @message.blank?
      return "please tell me something"
    elsif @message == 'I am going to work'
      @answer = 'Great!'
    elsif @message.include?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
