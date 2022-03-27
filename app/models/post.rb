class Post < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true

  belongs_to :user
  belongs_to :subreddit
  has_many :comments, dependent: :destroy
end
