class ChangeColumn < ActiveRecord::Migration
  def change
  	 change_table :histories do |t|
    t.references :pict_id
  end

  end
end
