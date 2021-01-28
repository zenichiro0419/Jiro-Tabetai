class RemoveIsRengeToJiro < ActiveRecord::Migration[6.0]
  def up
    remove_column :jiros, :is_renge, :boolean
  end

  def down
    add_column :jiros, :is_renge, :boolean
  end
end
