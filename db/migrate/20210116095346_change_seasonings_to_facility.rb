class ChangeSeasoningsToFacility < ActiveRecord::Migration[6.0]
  def up
    change_column :facilities, :seasoning1, :integer
    change_column :facilities, :seasoning2, :integer
    change_column :facilities, :seasoning3, :integer
    change_column :facilities, :seasoning4, :integer
    change_column :facilities, :seasoning5, :integer
  end

  def down
    change_column :facilities, :seasoning1, :string
    change_column :facilities, :seasoning2, :string
    change_column :facilities, :seasoning3, :string
    change_column :facilities, :seasoning4, :string
    change_column :facilities, :seasoning5, :string
  end
end
