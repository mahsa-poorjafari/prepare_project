class AdminMailer < ActionMailer::Base
  
  def send_user_mail
    @message = Message.last
    mail(:to => "mb.sepanta@gmail.com", :subject => "Registered", :from => "mb.sepanta@gmail.com")
  end
  def send_hi
    mail(:to => "mb.sepanta@gmail.com", :subject => "Registered", :from => "mb.sepanta@gmail.com")
  end
  
end
