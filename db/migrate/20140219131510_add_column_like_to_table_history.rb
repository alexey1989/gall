class AddColumnLikeToTableHistory < ActiveRecord::Migration
  def change
    add_column :histories, :like, :string
  end
end
