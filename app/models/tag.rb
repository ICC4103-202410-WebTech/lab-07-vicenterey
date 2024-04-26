class Tag < ApplicationRecord
 has_many :posts, through: :posts_tags

 validates :name, presence: { message: "A tag must have a name present" }, uniqueness: { message: "A tag name must be unique" }
end
