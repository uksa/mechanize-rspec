require 'rubygems'
require 'mechanize'
require 'sign_in'

RSpec.describe SignIn, '#users' do

  H1_TAG = '.container>h3'

  before(:each) do
    @url = 'http://www.uksa-testing.co.uk'
    @agent = Mechanize.new { |agent|
      agent.user_agent_alias = 'Mac Safari'
    }
    @sign_in = SignIn.new(@agent, @url)
  end

   context 'With Users signing in' do

    it 'authentication fails if credentials are Unknown' do
      page = @sign_in.user(User.unknown_user)
      expect(page.at(H1_TAG).text).to eq ('Sign in')
    end

    it 'authentication logs in when credentials are Admin' do
      page = @sign_in.user(User.admin_user)
      expect(page.at(H1_TAG).text).to eq ('Member Details')
    end

    it 'authentication logs in when credentials are Standard User' do
      page = @sign_in.user(User.standard_user)
      expect(page.at(H1_TAG).text).to eq ('Member Details')
    end

    it 'authentication logs in when credentials are Suspend User' do
      page = @sign_in.user(User.suspended_user)
      expect(page.at(H1_TAG).text).to eq ('Member Details')
    end

  end
end