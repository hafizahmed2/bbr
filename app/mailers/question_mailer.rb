class QuestionMailer < ApplicationMailer
  def initialize
    super({ subject: 'New question submission'})
  end
end
