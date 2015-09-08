require_relative 'spec_helper'
require_relative '../lib/user'
require_relative '../lib/home_page'

describe SignUp, '#New User' do

    it 'Registers a new user and take them to the "Members Welcome" page' do
      new_user = User.new_user
      sign_up = HomePage.new(@home_page).goto_sign_up_page
      member_welcome = sign_up.member(new_user)
      expect(member_welcome.page.title).to eq 'UK Software Alliance | Members Home'
      expect(member_welcome.page.uri.path).to eq '/member_welcome'
    end

end