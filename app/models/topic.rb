class Topic < ApplicationRecord
  has_many :posts, dependent: :delete_all
  validates :title, presence: true,
                    length: { minimum: 1 }
end
