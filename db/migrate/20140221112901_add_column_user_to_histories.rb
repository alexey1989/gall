class AddColumnUserToHistories < ActiveRecord::Migration
  def change
    add_column :histories, :user_id, :integer
    add_column :histories, :event_type, :string
    add_column :histories, :data, :text
  end
end
