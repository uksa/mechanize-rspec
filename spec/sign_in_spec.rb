require_relative 'spec_helper'
require_relative '../lib/sign_in'

describe SignIn, '#users' do

  H3_TAG = '.container>h3'

   context 'With Users signing in' do

    it 'authentication fails if credentials are Unknown' do
      sign_in = SignIn.new(@home_page)
      home_page = sign_in.user(User.unknown_user)
      expect(home_page.at(H3_TAG).text).to eq ('Sign in')
    end

    it 'authentication logs in when credentials are Admin' do
      sign_in = SignIn.new(@home_page)
      member_welcome = sign_in.user(User.admin_user)
      expect(member_welcome.title).to eq ('UK Software Alliance | Members Home')
    end

    it 'authentication logs in when credentials are Standard User' do
      sign_in = SignIn.new(@home_page)
      member_welcome = sign_in.user(User.standard_user)
      expect(member_welcome.title).to eq ('UK Software Alliance | Members Home')
    end

    it 'authentication logs in when credentials are Suspend User' do
      sign_in = SignIn.new(@home_page)
      suspended_page = sign_in.user(User.suspended_user)
      expect(suspended_page.title).to eq ('UK Software Alliance | Account Suspended')
    end

  end
end