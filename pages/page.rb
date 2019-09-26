# frozen_string_literal: true

# This is the parent object that all other page objects will inherit
class Page
  def initialize(browser)
    @browser = browser
  end

  def open(path)
    @browser.goto("#{BASE_URL}/index.php?#{path}")
  end
end
