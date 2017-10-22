class AddCategoryIdToGalleryFolder < ActiveRecord::Migration
  def change
    add_column :gallery_folders, :category_id, :int
  end
end
