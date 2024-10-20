class User < ApplicationRecord
  validates(:username, presence: true, uniqueness: true)
  validates(:email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP })
  validates(:password, length: { minimum: 8, maximum: 50 }, confirmation: true)
end
