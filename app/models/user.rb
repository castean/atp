class User < ActiveRecord::Base
  acts_as_authentic do |c|
    c.crypto_provider = Authlogic::CryptoProviders::MD5
    c.validate_password_field
    c.logged_in_timeout = 1.day
    c.login_field = 'email'
  end # block optional
  attr_accessible :login, :email, :name, :password, :password_confirmation
end
