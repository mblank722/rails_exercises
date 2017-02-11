class User < ApplicationRecord
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i

  validates :first_name, presence: true#, length: {in 2..255}, case_sensitive: true

  validates :first_name, length: {in 2..255} #case_sensitive: true

  # validates :email,  :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
  #
  # validates :age,  presence:true
  # validates_numericality_of :age, greater_than_or_equal_to: 10, less_than: 150
end
