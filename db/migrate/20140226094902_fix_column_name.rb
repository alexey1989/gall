class FixColumnName < ActiveRecord::Migration
  def change
  	rename_column :comments, :commenter, :user_id
  end
end
