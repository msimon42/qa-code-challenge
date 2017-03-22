class LoginPage < PageActions

  def login_field
    @browser.find_element(:id, "userName")
  end

  def password_field
    @browser.find_element(:id, "password")
  end

  def singin_button
    @browser.find_element(:id, "sign-in-button")
  end

  def invalid_login_password_error
    @browser.find_element(:id, "actionerrors").find_element(:css, "span.error")
  end

  def password_required_error
    @browser.find_element(:id, "error-invalid-password")
  end

  def login_length_error
    @browser.find_element(:id, "error-min-username")
  end

  def password_length_error
    @browser.find_element(:id, "error-min-password")
  end

end