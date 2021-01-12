class RemoveSomeColumnsFromJiros < ActiveRecord::Migration[6.0]
  def up
    remove_column :jiros, :in_store_pending, :integer
    remove_column :jiros, :is_apron, :boolean
    remove_column :jiros, :is_parking_area, :boolean
    remove_column :jiros, :is_water_server, :boolean
    remove_column :jiros, :is_rest_room, :boolean
    remove_column :jiros, :is_trash_box, :boolean
    remove_column :jiros, :is_tissue, :boolean
  end

  def down
    add_column :jiros, :in_store_pending, :integer
    add_column :jiros, :is_apron, :boolean
    add_column :jiros, :is_parking_area, :boolean
    add_column :jiros, :is_water_server, :boolean
    add_column :jiros, :is_rest_room, :boolean
    add_column :jiros, :is_trash_box, :boolean
    add_column :jiros, :is_tissue, :boolean
  end
end
