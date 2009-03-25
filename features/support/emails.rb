def delivered_email_n(index)
  ActionMailer::Base.deliveries[index] 
end

def last_email_sent() 
  delivered_email_n(-1)
end 
