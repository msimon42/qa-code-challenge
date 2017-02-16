class ITRIAGE < PageActions

  def home_page
    @home_page ||= HomePage.new @browser
  end

  def logo
    @logo ||= Logo.new @browser
  end
end