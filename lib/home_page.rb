require_relative 'base_page'
require_relative 'sign_up'

class HomePage < BasePage

  SIGN_UP = { href: '/users/sign_up' }

  def initialize(page)
    super(page)
  end

  def goto_sign_up_page
    sign_up_page = page.link_with(SIGN_UP).click
    SignUp.new(sign_up_page)
  end

end