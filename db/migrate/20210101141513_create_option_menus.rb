class CreateOptionMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :option_menus do |t|
      t.string :name
      t.integer :jiro_id
      t.integer :price

      t.timestamps
    end
  end
end
