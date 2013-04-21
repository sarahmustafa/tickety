class UserMailer < ActionMailer::Base
  default from: "tickety.jp@gmail.com"


  def ticket_confirmation(user)
    @user = user

    mail to: user.email, subject: "Tickety: Movie Ticket Confirmation"
  end
end
