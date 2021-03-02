class AddLocationColumnsToJiros < ActiveRecord::Migration[6.0]
  def change
    add_column :jiros, :latitude, :float
    add_column :jiros, :longitude, :float
  end
end
