# frozen_string_literal: true

# service to ask questions to users
class QuestionsController < ApplicationController
  def ask; end

  def answer
    @your_question = params[:question]
    @coach_answer = "I don't care, get dressed and go to work!"
    @coach_answer = 'Great!' if @your_question.capitalize.match?('I am going to work')
    @coach_answer = 'Silly question, get dressed and go to work!' if @your_question.capitalize.match?(/\?$/)
  end
end
