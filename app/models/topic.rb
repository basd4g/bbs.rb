class Topic < ApplicationRecord
  has_many :posts
  validates :title, presence: true,
                    length: { minimum: 1 }
end
