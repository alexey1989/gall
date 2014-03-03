class CreatePicks < ActiveRecord::Migration
  def change
    create_table :picks do |t|
      t.string :name
      t.integer :category
      t.string :url

      t.timestamps
    end
  end
end
