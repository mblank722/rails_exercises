class User < ApplicationRecord
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i

  validates :first_name, :last_name,  presence: true, length: { minimum: 2 }, length: { maximum: 255 }

  validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }

  # validates :email,  :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
  #
  # validates :age,  presence:true
  # validates_numericality_of :age, greater_than_or_equal_to: 10, less_than: 150
end
