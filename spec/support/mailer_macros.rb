module MailerMacros
  def has_sent_emails?
    total_emails_sent > 0
  end

  def total_emails_sent
    ActionMailer::Base.deliveries.length
  end

  def last_email
    ActionMailer::Base.deliveries.last
  end
  
  def reset_email
    ActionMailer::Base.deliveries = []
  end
end
