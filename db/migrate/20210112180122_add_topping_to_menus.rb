class AddToppingToMenus < ActiveRecord::Migration[6.0]
  def up
    add_column :menus, :topping7, :string
  end

  def down
    remove_column :menus, :topping7, :string
  end
end
