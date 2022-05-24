class AnswersController < ActionController::Base
  def answer
    @user_question = params[:question]

    # Check what the question is?
    # if question is 'I am going to work' reply 'Great!'
    if @user_question == 'I am going to work'
      @coach_reply = 'Great!'
    elsif @user_question.include?('?')
      # if questions ends with '?' coach will answer 'Silly question, get dressed and go to work!'
      @coach_reply = "Silly question, get dressed and go to work!"
    else 
      @coach_reply = "I don't care, get dressed and go to work!"
    end
    # If any other questions, coach will answer 'I don't care, get dressed and go to work!'
  end
end