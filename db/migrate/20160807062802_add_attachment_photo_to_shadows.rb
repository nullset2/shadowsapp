class AddAttachmentPhotoToShadows < ActiveRecord::Migration
  def self.up
    change_table :shadows do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :shadows, :photo
  end
end
