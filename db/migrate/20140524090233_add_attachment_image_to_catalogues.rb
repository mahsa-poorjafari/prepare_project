class AddAttachmentImageToCatalogues < ActiveRecord::Migration
  def self.up
    change_table :catalogues do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :catalogues, :image
  end
end
