class Post < ApplicationRecord
  belongs_to: blog
  has_many: messages
end
