class BookingsController < FeedbacksBaseController
  def initialize
    super(Booking, [])
  end

  private

  def resource_permitted_params
    params[:booking][:services] = params[:booking][:services].reject(&:blank?) if params[:booking][:services].present?
    params[:booking][:date] =Date.strptime(params[:booking][:date],"%m/%d/%Y").to_s if params[:booking][:date].present?
    params.require(@resource_class.name.underscore.to_sym).permit(:user_name, :user_email, :booking_for, :date, :time, :location, :budget, services: [])
  end
end
