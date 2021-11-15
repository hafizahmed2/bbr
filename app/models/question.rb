class Question < ApplicationRecord
  validates :user_name, presence: true, format: {with: /\A[^0-9`!@#\$%\^&*+_=]+\z/}
  validates :user_email, presence: true, format: {with: URI::MailTo::EMAIL_REGEXP}
  validates :question, presence: true

  after_create :send_email_to_admin

  private

  def send_email_to_admin
    QuestionMailer.new_record_email(self).deliver_now
  end
end
