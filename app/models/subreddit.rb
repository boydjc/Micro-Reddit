class Subreddit < ApplicationRecord
	validates :name, uniqueness: true, presence: true
	validates :description, presence: true

	has_many :posts, dependent: :destroy
end
