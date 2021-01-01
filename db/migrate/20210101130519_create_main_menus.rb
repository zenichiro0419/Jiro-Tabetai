class CreateMainMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :main_menus do |t|
      t.string :name
      t.integer :jiro_id
      t.integer :price
      t.integer :noodles_quantity
      t.text :note

      t.timestamps
    end
  end
end
