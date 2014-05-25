class AddFaFieldToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :warranty_fa, :text
    add_column :categories, :maintaion_fa, :text
    add_column :categories, :installation_fa, :text
  end
end
