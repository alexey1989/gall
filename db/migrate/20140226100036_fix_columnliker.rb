class FixColumnliker < ActiveRecord::Migration
  def change
  	rename_column :likes, :liker, :user_id
  end
end
