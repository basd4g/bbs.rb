class Post < ApplicationRecord
  belongs_to :topic
  belongs_to :original_post, class_name: 'Post', foreign_key: 'post_id', optional: true
  hasmany :posts, dependent: :nullify
end
