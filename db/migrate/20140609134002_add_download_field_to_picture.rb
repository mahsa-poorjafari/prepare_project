class AddDownloadFieldToPicture < ActiveRecord::Migration
  def change
    add_column :pictures, :download, :boolean
  end
end
