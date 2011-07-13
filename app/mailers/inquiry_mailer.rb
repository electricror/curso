class InquiryMailer < ActionMailer::Base
  default :from => "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.inquiry_mailer.notification.subject
  #
  def notification(inquiry)
    @inquiry = inquiry

    mail :to => @inquiry.email, :subject => "New Inquiry"
  end
end

