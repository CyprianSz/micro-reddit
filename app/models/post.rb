class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :title, presence: true, length: { in: 5..30 }
  validates :body,  presence: true, length: { in: 10..300 }
end
