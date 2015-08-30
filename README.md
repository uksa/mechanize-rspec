Mechanize and RSpec
====

[![Build Status](https://travis-ci.org/uksa/mechanize-rspec.svg)](https://travis-ci.org/uksa/mechanize-rspec)

#Setup
1. gem install bundler
2. curl -L https://get.rvm.io | bash -s stable --auto-dotfiles --autolibs=enable --ruby - gets RVM
3. rvm -v - If you get rvm is a function, that means RVM was successfully installed.
4. RubyMine > Preferences > Filter "ruby sdk and gems" - Select RVM from the list, click OK
5. bundle install - installs all required gems

#Tests
Following tests are available

##Sign In Spec
1. Authentication Fails for Unknown Credentials
2. Authentication Passes for Admin
3. Authentication Passes for Standard User
4. Authentication Passed for Suspended User