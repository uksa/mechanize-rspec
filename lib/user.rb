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
    self.new('uksa.testing+admin@gmail.com', 'Password1')
  end

  def self.standard_user
    self.new('uksa.testing+standard@gmail.com', 'Password1')
  end

  def self.suspended_user
    self.new('uksa.testing+suspend@gmail.com', 'Password1')
  end

end