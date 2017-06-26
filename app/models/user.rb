class User < ApplicationRecord
  include Clearance::User

  # attr_accessor :username
  #
  # validates_presence_of :username
  # validates_uniqueness_of :username
  #
  # def self.authenticate(email, password)
  #   user = find(:first, :conditions => ['username = ? OR email = ?', email.to_s.downcase, email.to_s.downcase])
  #   user && user.authenticated?(password) ? user : nil
  # end
end
