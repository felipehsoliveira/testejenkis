require 'selenium-webdriver'

Before do
  @example = Example.new
end

After do |scenario|
  if scenario.failed?
        filename = "error-#{@current_page.class}-#{Time.now}.png" 
        save_screenshot(filename)
        embed(filename, 'image/png')
    end
end