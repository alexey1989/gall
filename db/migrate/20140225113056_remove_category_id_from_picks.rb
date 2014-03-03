class RemoveCategoryIdFromPicks < ActiveRecord::Migration
  def change
    remove_column :picks, :category, :integer
  end
end
