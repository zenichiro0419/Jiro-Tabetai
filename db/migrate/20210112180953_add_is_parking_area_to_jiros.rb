class AddIsParkingAreaToJiros < ActiveRecord::Migration[6.0]
  def up
    add_column :jiros, :is_parking_area, :boolean
  end

  def down
    remove_column :jiros, :is_parking_area, :boolean
  end
end
