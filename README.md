Mechanize and RSpec
====

[![Build Status](https://travis-ci.org/uksa/mechanize-rspec.svg)](https://travis-ci.org/uksa/mechanize-rspec)

#Setting up
1. https://uksa.eu 
2. Follow up the Articles on [Rspec](https://uksa.eu/test-automation-ruby-rspec) and [Mechanize](https://uksa.eu/test-automation-ruby-mechanize)

# Tests
Following tests are available

## Sign In Spec
1. Fails authentication if credentials are Unknown
2. Logs in when credentials are Admin
3. logs in when credentials are Standard User
4. logs in when credentials are Suspended User

## Create User
1. Registers a new user and take them to the "Members Welcome" page