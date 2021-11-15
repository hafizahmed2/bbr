class ExperienceMailer < ApplicationMailer
  def initialize
    super({ subject: 'New experience submission'})
  end
end
