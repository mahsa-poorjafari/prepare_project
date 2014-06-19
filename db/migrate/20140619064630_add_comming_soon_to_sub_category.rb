class AddCommingSoonToSubCategory < ActiveRecord::Migration
  def change
    add_column :sub_categories, :comming_soon, :boolean
  end
end
