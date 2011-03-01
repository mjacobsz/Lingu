class MarvinMailer < ActionMailer::Base
  default :from => "marvin@tty.nl"
  
  def welcome_email(user)
    @user = user
    @url = "http://vleesboek.nl"
    mail (:to => user.email, :subject => "Welcome = that was an equals sign =, one more =, ,=")
  end
  
end
