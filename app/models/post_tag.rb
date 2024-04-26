class Post_Tags < ApplicationRecord
  belongs_to :tags
  belongs_to :posts
end
