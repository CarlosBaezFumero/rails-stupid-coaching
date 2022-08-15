# frozen_string_literal: true

# comment for style -- Pages controller description
class PagesController < ApplicationController
  def answer
    # If the message is I am going to work, the coach will answer Great!
    # If the message has a question mark ? at the end, the coach will answer Silly question, get dressed and go to work!.
    # Otherwise the coach will answer I don't care, get dressed and go to work!
    @query = params[:query]
    @coach_answer = ''
    if @query == 'I am going to work'
      @coach_answer = 'Great!'
    elsif @query.include?('?')
      @coach_answer = 'Silly question, get dressed and go to work!'
    else
      @coach_answer = "I don't care, get dressed and go to work!"
    end
  end
  def home
  end
end
