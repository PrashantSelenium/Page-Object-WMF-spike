class LoginPage
  include PageObject

  page_url 'http://en.wikipedia.org/w/index.php?title=Special:UserLogin'
  text_field(:username, :id => 'wpName1')
  text_field(:password, :id => 'wpPassword1')
  button(:login, :id => 'wpLoginAttempt')
  link(:phishing, :link_text => "phishing")
  link(:password_strength, :link_text => "password strength")
  
  def login_with(username, password)
    self.username = username
    self.password = password
    login
  end
  
  def login_page_links
    self.phishing = phishing
    self.password_strength = password_strength
  end
    
    
    

end