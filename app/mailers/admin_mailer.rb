class AdminMailer < ActionMailer::Base
  
  def send_user_mail
    p 'ssssssssssssssssssssssssss start sending'
    mail(to: 'mahsa.poorjafari@gmail.com', subject: 'prepared')
    p 'fffffffffffffffffffffff finish '
  end
  
end
