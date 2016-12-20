require 'watir-webdriver'

Before do
  # Problem: https://stackoverflow.com/questions/15742278/selecting-options-one-by-one-using-watir-webdriver , https://groups.google.com/forum/#!topic/watir-general/WhwpPvzHWmM , http://watirmelon.com/2011/08/02/watir-webdriver-obselete-element-error/ ,
  # Solution: http://watirmelon.com/2011/08/14/telling-watir-webdriver-to-always-locate-elements-upon-use/
  Watir::always_locate = true

  # @browser = Watir::Browser.new :firefox
  @browser = Watir::Browser.new :chrome #, switches: %w[ --disable-extensions ]
  @browser.window.maximize
  @browser.driver.manage.timeouts.implicit_wait = 10
end

After do |scenario|
  begin
    if scenario.failed?
      filename = "error - #{@current_page.class} - #{scenario.__id__} - #{Time.now.strftime('%Y-%m-%d_%H-%M-%S')}.png"
      @current_page.save_screenshot("results/#{filename}")
      embed(filename, 'image/png')
    end
  rescue
  end

  @browser.close
end