class CreateSubCategories < ActiveRecord::Migration
  def change
    create_table :sub_categories do |t|
      t.string :title_en
      t.string :title_fa
      t.integer :category_id

      t.timestamps
    end
  end
end
