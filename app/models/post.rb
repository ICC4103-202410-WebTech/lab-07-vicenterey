class Post < ApplicationRecord
  belongs_to :user
  belongs_to :parent_post, class_name: 'Post', foreign_key: 'post_id', optional: true
  has_many :post
  has_many :tags, through: :posts_tags

  validates :title, presence: { message: "The Post must have a title" }
  validates :content, presence: { message: "You can't publish an empty post!" }
  validates :user_id, presence: { message: "A post can't be published without a user" }
  validates :published_at, presence: { message: "A post must have a publish date" }
  validates :answers_count, presence: { message: "A post must have an answer count greater than 0" }, numericality: { greater_than_or_equal_to: 0 }
  validates :likes_count, presence: { message: "A post must have a likes count greater than 0" }, numericality: { greater_than_or_equal_to: 0 }
end
