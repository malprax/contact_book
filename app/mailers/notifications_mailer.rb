class NotificationsMailer < ActionMailer::Base
  
  default :from => "noreply@runiah-school.com"
  default :to => "kingmalprax@gmail.com"

    def new_message(message)
      @message = message
      mail(:subject => "[YourWebsite.tld] #{message.subject}")
    end
end
