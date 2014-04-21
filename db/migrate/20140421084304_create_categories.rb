class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.name :title
      t.text :description

      t.timestamps
    end
  end
end
