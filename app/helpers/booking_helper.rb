module BookingHelper
  def avaiable_time_options
    time = "5:00 AM"
    32.times.map{ time =  (Time.parse(time) + 30.minutes).strftime("%I:%M %p")}
  end
end
