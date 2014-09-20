class AddProductIdToProductFolder < ActiveRecord::Migration
  def change
    add_column :product_folders, :product_id, :integer
  end
end
