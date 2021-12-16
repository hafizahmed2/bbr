class Booking < ApplicationRecord
  validates :user_name, presence: true, format: {with: /\A[^0-9`!@#\$%\^&*+_=]+\z/}
  validates :user_email, presence: true, format: {with: URI::MailTo::EMAIL_REGEXP}
  validates :booking_for, presence: true
  validates :date, presence: true
  validates :time, presence: true
  validates :services, presence: true
  validates :budget, presence: true
  validates :location, presence: true

  after_create :send_email_to_admin

  def self.service_types
    ['Hair', 'Makeup', 'Hair and Makeup', 'Groomer', 'Barber', 'Nail Artist']
  end

  private

  def send_email_to_admin
    BookingMailer.new_record_email(self).deliver_now
  end
end
