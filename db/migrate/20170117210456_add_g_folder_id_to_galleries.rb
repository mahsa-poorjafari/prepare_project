class AddGFolderIdToGalleries < ActiveRecord::Migration
  def change
    add_column :galleries, :g_folder_id, :int
  end
end
