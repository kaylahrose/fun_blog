class User < ApplicationRecord
  include BCrypt
  has_secure_password
  has_many :comments
  has_many :statuses
  has_many :events

  validates_presence_of :email, :password_digest, :username
  validates_uniqueness_of :email, :username
end
