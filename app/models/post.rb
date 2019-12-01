class Post < ApplicationRecord
  belongs_to :topic
  belongs_to :original_post, class_name: 'Post', foreign_key: 'post_id', optional: true
  has_many :posts, dependent: :nullify
end
