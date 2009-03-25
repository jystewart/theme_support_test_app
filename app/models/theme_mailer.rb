class ThemeMailer < ActionMailer::Base
  def first(*params)
    setup_email
  end
  
  def second(*params)
    setup_email
  end
  
  def third(*params)
    setup_email
  end
  
  def fourth(*params)
    setup_email
  end
  
  def setup_email
    @subject = 'Sample emal'
    @recipients = "citizen@example.org"
  end
  

end
