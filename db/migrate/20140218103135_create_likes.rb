class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.string :liker
      t.references :pick, index: true

      t.timestamps
    end
  end
end
