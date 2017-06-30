class User < ActiveRecord::Base
  include Clearance::User

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  # attr_accessor :username
  #
  # validates_presence_of :username
  # validates_uniqueness_of :username

  # def self.authenticate(email, password)
  #   user = find(:first, :conditions => ['username = ? OR email = ?', email.to_s.downcase, email.to_s.downcase])
  #   user && user.authenticated?(password) ? user : nil
  # end
end
