class User < ApplicationRecord
  include BCrypt
  has_secure_password
  has_many :comments
  has_many :statuses
  has_many :events
end
