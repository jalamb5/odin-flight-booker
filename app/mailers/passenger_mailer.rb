class PassengerMailer < ApplicationMailer
  def confirmation_email
    @user = params[:passenger]
    @url = 'http://example.com/login'
    mail(to: @user.email, subject: 'Your booking is confirmed!')
  end
end
