class AddNameToEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :when
      t.string :user_id
      t.datetime "created_at"
      t.datetime "updated_at"
      t.integer  "cached_votes_up", default: 0
      t.integer  "comments_count",  default: 0
    end
  end
end
