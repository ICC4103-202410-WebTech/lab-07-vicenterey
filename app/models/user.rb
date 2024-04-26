class User < ApplicationRecord
  has_many :posts

  validates :name, presence: { message: "A User must have a name" }
  validates :email, presence: { message: "A User must have an email" }, uniqueness: { message: "A User must have a unique email" }, format: { with: URI::MailTo::EMAIL_REGEXP, message: "Invalid email format" }
  validates :password, presence: { message: "A User must have a password" }, length: { minimum: 6, message: "Password must be at least 6 characters long" }
end
