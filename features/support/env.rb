# frozen_string_literal: true

# This module makes the browser method available to all of the other pages
module BrowserContainer
  def browser
    # Watir defaults to a chrome browser if none is specified
    @browser = Watir::Browser.new
  end
end
World(BrowserContainer)

Before do |scenario|
  puts scenario.name
end

After do |scenario|
  embed(site.screenshot, 'image/png') if scenario.failed?
  browser.close
end
