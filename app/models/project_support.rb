class ProjectSupport < ApplicationRecord
  validates :user_name, presence: true, format: {with: /\A[^0-9`!@#\$%\^&*+_=]+\z/}
  validates :user_email, presence: true, format: {with: URI::MailTo::EMAIL_REGEXP}
  validates :location, presence: true
  validates :start_date, presence: true
  validates :groomer, presence: true
  validates :union_requirement, presence: true
  validates :project_details, presence: true

  after_create :send_email_to_admin

  enum union_requirement: ['yes', 'no']

  def self.groomer_types
    ['Hair', 'Makeup', 'Hair and Makeup', 'Groomer', 'Barber', 'Nail Artist']
  end

  private

  def send_email_to_admin
    ProjectSupportMailer.new_record_email(self).deliver_now
  end
end
