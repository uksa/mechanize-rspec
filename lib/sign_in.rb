require 'base_page'
require_relative 'user'

class SignIn < BasePage

  USERNAME = 'user[email]'
  PASSWORD = 'user[password]'

  def initialize(page)
    super(page)
  end

  def user(user)
    form = page.forms.first
    form[USERNAME] = user.email
    form[PASSWORD] = user.password
    form.submit
  end

end