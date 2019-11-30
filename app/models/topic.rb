class Topic < ApplicationRecord
  has_many :posts, dependent: :destroy
  validates :title, presence: true,
                    length: { minimum: 1 }
end
