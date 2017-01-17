class CreateGalleryFolders < ActiveRecord::Migration
  def change
    create_table :gallery_folders do |t|
      t.string :title_fa
      t.string :title_en

      t.timestamps null: false
    end
  end
end
