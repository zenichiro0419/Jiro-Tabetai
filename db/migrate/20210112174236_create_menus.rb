class CreateMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :menus do |t|
      t.string :name
      t.integer :jiro_id
      t.integer :price
      t.boolean :is_main
      t.integer :noodle_quantity
      t.text :note
      t.string :topping1
      t.string :topping2
      t.string :topping3
      t.string :topping4
      t.string :topping5
      t.string :topping6

      t.timestamps
    end
  end
end
