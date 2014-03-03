class AddAttachmentThumbToPicks < ActiveRecord::Migration
  def self.up
    change_table :picks do |t|
      t.attachment :thumb
    end
  end

  def self.down
    drop_attached_file :picks, :thumb
  end
end
