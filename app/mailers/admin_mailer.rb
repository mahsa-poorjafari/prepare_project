class AdminMailer < ActionMailer::Base
  
  def send_user_mail
    p 'ssssssssssssssssssssssssss start sending'
    mail(to: User.all.collect(&:email).join(','), subject: 'mail subject')
    p 'fffffffffffffffffffffff finish '
  end
  
end
