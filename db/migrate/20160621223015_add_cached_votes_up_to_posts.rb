class AddCachedVotesUpToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :cached_votes_up, :string
    add_index :posts, :cached_votes_up
  end
end
