class BookingMailer < ApplicationMailer
  def initialize
    super({ subject: 'New booking submission'})
  end
end
