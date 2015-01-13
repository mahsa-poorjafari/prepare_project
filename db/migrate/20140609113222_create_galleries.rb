class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.integer :category_id

      t.timestamps
    end
  end
end
