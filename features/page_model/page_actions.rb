class PageActions

  def initialize browser
    @browser = browser
  end

  def visit
    @browser.navigate.to build_url
  end

  def build_url
    self.path.gsub!("itriagehealth.com", get_env)
  end
  end