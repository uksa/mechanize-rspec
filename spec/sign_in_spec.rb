require 'rubygems'
require 'mechanize'
require 'sign_in'
require_relative '../spec/spec_helper'

RSpec.describe SignIn, '#users' do

  H3_TAG = '.container>h3'

   context 'With Users signing in' do

    it 'authentication fails if credentials are Unknown' do
      page = @sign_in.user(User.unknown_user)
      expect(page.at(H3_TAG).text).to eq ('Sign in')
    end

    it 'authentication logs in when credentials are Admin' do
      page = @sign_in.user(User.admin_user)
      expect(page.title).to eq ('UK Software Alliance | Members Home')
    end

    it 'authentication logs in when credentials are Standard User' do
      page = @sign_in.user(User.standard_user)
      expect(page.title).to eq ('UK Software Alliance | Members Home')
    end

    it 'authentication logs in when credentials are Suspend User' do
      page = @sign_in.user(User.suspended_user)
      expect(page.title).to eq ('UK Software Alliance | Account Suspended')
    end

  end
end