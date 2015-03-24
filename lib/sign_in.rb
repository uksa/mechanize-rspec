require 'user'

class SignIn

  attr_reader :agent, :url

  def initialize(agent, url)
    @agent = agent
    @url   = url
  end

  def user(user)
    @agent.get(@url) do |page|
      form = page.forms.first
      form['user[email]']   = user.email
      form['user[password]'] = user.password
      return form.submit
    end
  end

end