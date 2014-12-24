class AddDiscriptionToSubCategory < ActiveRecord::Migration
  def change
    add_column :sub_categories, :description_fa, :text
    add_column :sub_categories, :description_en, :text
  end
end
