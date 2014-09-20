class AddProductFolderIdToPicture < ActiveRecord::Migration
  def change
    add_column :pictures, :product_folder_id, :integer
  end
end
