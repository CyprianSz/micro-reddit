class User < ApplicationRecord
  has_many :posts
  has_many :comments

  validates :name,    presence: true, length: { in: 3..20 }, uniqueness: true
  validates :email,   presence: true, length: { maximum: 255 }, uniqueness: true
end
