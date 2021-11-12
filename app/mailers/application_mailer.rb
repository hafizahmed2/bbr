class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'

  def initialize(options)
    super()
    @subject = options[:subject]
  end

  def new_record_email(object)
    @model_object = object
    send_to = ENV['EMAIL_TO'].split(',')

    mail(to: send_to, from: ENV['EMAIL_FROM'], subject: @subject)
  end
end
