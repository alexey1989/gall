class AddReferenceToPicks < ActiveRecord::Migration
  def change
    add_column :picks, :category, :integer
  end
end
