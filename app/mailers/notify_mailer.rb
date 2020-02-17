class NotifyMailer < ActionMailer::Base

  def send_remainder(user_id, show_id)
    @user = User.find_by_id(user_id)
    @show = Show.find_by_id(show_id)
    mail(to: @user.email, subject: "Notification for Show Remainder")
  end

end
