class AddColumnLikesCountToPicks < ActiveRecord::Migration
  def change
    add_column :picks, :likes, :integer, :default=>0
  end
end
