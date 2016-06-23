class AddCommentsCountToPosts < ActiveRecord::Migration
  def change
    add_index :posts, :comments_count
  end
end
