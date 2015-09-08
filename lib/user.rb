class User
  attr_reader :email, :password

  def initialize(email, password)
    @email    = email
    @password = password
  end

  def self.unknown_user
    self.new('email@email.com', 'Password123')
  end

  def self.admin_user
    self.new('admin@uksa.eu', 'Password1')
  end

  def self.standard_user
    self.new('standard@uksa.eu', 'Password1')
  end

  def self.suspended_user
    self.new('suspend@uksa.eu', 'Password1')
  end

  def self.new_user
    self.new(Faker::Internet.email, password: 'Password1')
  end

end