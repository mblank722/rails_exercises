class Post < ApplicationRecord
  vaildates :title, :content, presence: true
  validates :title, length:{:minimum 7}
  belongs_to :blog
  has_many :messages
end
