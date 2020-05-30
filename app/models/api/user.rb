class Api::User < ApplicationRecord
  has_secure_password
  validates :name, length: { minimum: 1, maximum: 255 }, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i.freeze
  validates :email, format: { with: VALID_EMAIL_REGEX },
                    length: { minimum: 5, maximum: 255 },
                    presence: true,
                    uniqueness: true
  validates :password, length: { minimum: 6, maximum: 255 }
end
