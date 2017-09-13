require 'selenium-webdriver'

Before do
  @example = Example.new
end

After do |scenario|
        filename = "error-#{@current_page.class}-#{Time.now}.png" 
        save_screenshot(filename)
        embed(filename, 'image/png')
end