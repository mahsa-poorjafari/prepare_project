class AddAttachmentImageToCategories < ActiveRecord::Migration
  def self.up
    change_table :categories do |t|
      t.attachment :Image
    end
  end

  def self.down
    drop_attached_file :categories, :Image
  end
end
