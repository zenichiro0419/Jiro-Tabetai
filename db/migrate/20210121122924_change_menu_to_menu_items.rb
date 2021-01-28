class ChangeMenuToMenuItems < ActiveRecord::Migration[6.0]
  def change
    rename_table :menus, :menu_items
  end
end
