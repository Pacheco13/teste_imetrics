Capybara.configure do |config|
    config.default_driver = :chrome
    Capybara.register_driver :chrome do |app|
      Capybara::Selenium::Driver.new(app, :browser => :chrome)
    end
    config.default_max_wait_time = 10
  end

Capybara.configure do |config|
    Capybara.page.driver.browser.manage.window.maximize
end

Before do 
    @carreira_page = CarreiraPage.new
end

After do |scenario|
  xote = page.save_screenshot("log/screenshots/#{scenario.__id__}.png")
  embed(xote, "image/png", "Evidência")
end