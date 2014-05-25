class CreateCatalogues < ActiveRecord::Migration
  def change
    create_table :catalogues do |t|
      t.string :title_fa
      t.string :title_en

      t.timestamps
    end
  end
end
