class RemoveFieldNameFromTableHistory < ActiveRecord::Migration
  def change
    remove_column :histories, :pict_id, :integer
    remove_column :histories, :user_id, :integer
    remove_column :histories, :category_id, :integer
    remove_column :histories, :like, :string
    remove_column :histories, :comment, :string
    remove_column :histories, :pict_id_id, :integer
  end
end
