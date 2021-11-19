class ExperiencesController < FeedbacksBaseController
  def initialize
    super(Experience, [])
  end

  private

  def resource_permitted_params
    params[:experience][:date] =Date.strptime(params[:experience][:date],"%m/%d/%Y").to_s if params[:experience][:date].present?
    params.require(@resource_class.name.underscore.to_sym).permit(:user_name, :user_email, :date, :experience)
  end
end
