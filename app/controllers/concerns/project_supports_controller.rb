class ProjectSupportsController < FeedbacksBaseController
  def initialize
    super(ProjectSupport, [:user_name, :user_email, :date, :experience])
  end
end
