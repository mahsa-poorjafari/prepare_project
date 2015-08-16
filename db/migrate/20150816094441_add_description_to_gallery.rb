class AddDescriptionToGallery < ActiveRecord::Migration
  def change
    add_column :galleries, :description_fa, :text
    add_column :galleries, :description_en, :text
  end
end
