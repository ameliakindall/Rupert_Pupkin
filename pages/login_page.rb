# frozen_string_literal: true

# This pageobject file defines methods for the log in form
class LoginPage < Page
  attr_reader :path

  def initialize
    @path = '/index.php?controller=authentication&back=my-account'
  end

  def login_as(username, password)
    username_field.set(username)
    password_field.set(password)
    submit_button.click
  end

  def username_field
    @browser.input(id: 'email')
  end

  def password_field
    @browser.input(id: 'passwd')
  end

  def submit_button
    @browser.button(id: 'SubmitLogin')
  end

  def forgot_password_link
    @browser.a(title: 'Recover your forgotten password')
  end
end
