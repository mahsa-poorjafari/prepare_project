class AddModelTypeToPicture < ActiveRecord::Migration
  def change
    add_column :pictures, :model_type, :boolean
  end
end
