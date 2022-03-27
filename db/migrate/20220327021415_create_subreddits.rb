class CreateSubreddits < ActiveRecord::Migration[6.1]
  def change
    create_table :subreddits do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
