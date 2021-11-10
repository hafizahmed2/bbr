class BookingsController < FeedbacksBaseController
  def initialize
    super(Booking, [])
  end

  private

  def resource_permitted_params
    params[:booking][:services] = params[:booking][:services].reject(&:blank?) if params[:booking][:services].present?
    params.require(@resource_class.name.underscore.to_sym).permit(:user_name, :user_email, :booking_for, :date, :time, :budget, services: [])
  end
end
