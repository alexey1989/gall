class AddColumnLikeToHistory < ActiveRecord::Migration
  def change
    add_column :histories, :comment, :string
  end
end
