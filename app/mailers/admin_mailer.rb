class AdminMailer < ActionMailer::Base
  
  def send_user_mail
    mail(to: User.all.collect(&:email).join(','), subject: 'mail subject')
  end
  
end
