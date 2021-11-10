class ProjectSupportsController < FeedbacksBaseController
  def initialize
    super(ProjectSupport, [])
  end

  private

  def resource_permitted_params
    params[:project_support][:union_requirement] = params[:project_support][:union_requirement].to_i
    params[:project_support][:groomer] = params[:project_support][:groomer].reject(&:blank?)
    params.require(@resource_class.name.underscore.to_sym).permit(:user_name, :user_email, :start_date, :location, :union_requirement, :project_details, groomer: [])
  end
end
