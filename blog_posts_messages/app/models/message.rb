class Message < ApplicationRecord
  validates :author, :message, presence: true
  validates :message, length:{:minimum :is 15}
  belongs_to :post
end
