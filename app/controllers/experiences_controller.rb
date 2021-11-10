class ExperiencesController < FeedbacksBaseController
  def initialize
    super(Experience, [:user_name, :user_email, :date, :experience])
  end
end
