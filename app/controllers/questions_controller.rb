class QuestionsController < ApplicationController
  before_action :load_question, only: [:new, :create]

  def create
    respond_to do |format|
      @success = @question.save

      if @success
        @question = Question.new
        format.html {redirect_to(root_path)}
        format.js
      else
        format.html {render :new}
        format.js
      end
    end
  end

  private

  def load_question
    @question ||= request.post? ? Question.new(question_params) : Question.new
  end

  def question_params
    params.require(:question).permit(:user_name, :user_email, :question)
  end
end
