class ProjectSupportMailer < ApplicationMailer
  def initialize
    super({ subject: 'New support for projects submission'})
  end
end
