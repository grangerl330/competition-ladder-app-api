class User < ApplicationRecord
  has_many :ladders

  has_secure_password
end
