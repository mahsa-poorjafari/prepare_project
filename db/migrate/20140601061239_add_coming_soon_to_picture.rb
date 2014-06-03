class AddComingSoonToPicture < ActiveRecord::Migration
  def change
    add_column :pictures, :coming_soon, :boolean
  end
end
