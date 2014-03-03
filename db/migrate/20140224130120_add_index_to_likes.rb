class AddIndexToLikes < ActiveRecord::Migration
  def change
    add_index :likes, [:liker, :pick_id], unique: true
  end
end
