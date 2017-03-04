class Message < ApplicationRecord
  validates :author, :message, presence: true
  validates :message, lenght:{:minimum 15}
  belongs_to: post
end
