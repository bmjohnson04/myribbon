class AddCachedVotesUpToEvents < ActiveRecord::Migration
  def change
    add_index :events, :cached_votes_up
    add_index :events, :comments_count
    add_index :events, :user_id
  end
end
