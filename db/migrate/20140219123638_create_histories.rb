class CreateHistories < ActiveRecord::Migration
  def change
    create_table :histories do |t|
      t.integer :pict_id
      t.integer :user_id
      t.integer :category_id

      t.timestamps
    end
  end
end
