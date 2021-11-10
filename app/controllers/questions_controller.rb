class QuestionsController < FeedbacksBaseController
  def initialize
    super(Question, [:user_name, :user_email, :question])
  end
end
