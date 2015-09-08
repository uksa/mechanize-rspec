require_relative 'base_page'
require_relative 'member_welcome'
class SignUp < BasePage

  EMAIL            = 'user[email]'
  PASSWORD         = 'user[password]'
  PASSWORD_CONFIRM = 'user[password_confirmation]'

  def initialize(page)
    super(page)
  end

  def member(user)
    form = page.forms.first
    form[EMAIL]            = user.email
    form[PASSWORD]         = user.password
    form[PASSWORD_CONFIRM] = user.password
    member_welcome = form.submit
    MemberWelcome.new(member_welcome)
  end

end