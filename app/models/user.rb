class User < ApplicationRecord
  validates :username, presence: true,
            uniqueness: { case_sesitive: false},
            length: { minimum: 3, maximum: 25}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 25},
            uniqueness: {case_sesitive: false},
            format: {with: VALID_EMAIL_REGEX }

end
