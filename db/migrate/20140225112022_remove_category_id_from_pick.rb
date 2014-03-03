class RemoveCategoryIdFromPick < ActiveRecord::Migration
  def change
    remove_index :picks, :category_id
    remove_column :picks, :category_id, :string
  end
end
