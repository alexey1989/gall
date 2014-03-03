class RenameCategoryByPick < ActiveRecord::Migration
  def change
  	rename_column :picks, :category, :category_id
  end
end
