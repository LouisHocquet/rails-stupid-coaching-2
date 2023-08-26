# frozen_string_literal: true

# service to ask questions to users
class QuestionsController < ApplicationController
  def ask; end

  def answer
    @your_question = params[:question]
    if @your_question.capitalize.match?('I am going to work right now!')
      @coach_answer = "That's great son!"
    else
      @coach_answer = "I don't care, get dressed and go to work!"
      @coach_answer = 'Silly question, get dressed and go to work!' if @your_question.capitalize.match?(/\?$/)
      @coach_answer = "I can feel your motivation! #{@coach_answer}" if @your_question == @your_question.upcase
    end
  end
end
