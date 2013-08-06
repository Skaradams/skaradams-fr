class AddAttachmentPictureToSections < ActiveRecord::Migration
  def self.up
    change_table :sections do |t|
      t.attachment :picture
    end
  end

  def self.down
    drop_attached_file :sections, :picture
  end
end
