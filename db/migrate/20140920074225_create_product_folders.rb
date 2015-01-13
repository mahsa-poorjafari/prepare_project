class CreateProductFolders < ActiveRecord::Migration
  def change
    create_table :product_folders do |t|
      t.string :title_en
      t.string :title_fa

      t.timestamps
    end
  end
end
