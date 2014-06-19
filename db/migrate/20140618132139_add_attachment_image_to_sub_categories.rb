class AddAttachmentImageToSubCategories < ActiveRecord::Migration
  def self.up
    change_table :sub_categories do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :sub_categories, :image
  end
end
