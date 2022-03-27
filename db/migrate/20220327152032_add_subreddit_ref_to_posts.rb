class AddSubredditRefToPosts < ActiveRecord::Migration[6.1]
  def change
    add_reference :posts, :subreddit, null: false, foreign_key: true
  end
end
