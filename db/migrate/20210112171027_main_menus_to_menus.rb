class MainMenusToMenus < ActiveRecord::Migration[6.0]
  def change
    rename_table :main_menus, :main_menu
  end
end
