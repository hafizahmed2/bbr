class ProjectSupport < ApplicationRecord
  validates :user_name, presence: true, format: {with: /\A[^0-9`!@#\$%\^&*+_=]+\z/}
  validates :user_email, presence: true, format: {with: URI::MailTo::EMAIL_REGEXP}
  validates :location, presence: true
  validates :start_date, presence: true
  validates :groomer, presence: true
  validates :union_requirement, presence: true
  validates :project_details, presence: true
end
