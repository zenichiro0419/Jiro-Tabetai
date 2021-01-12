class CreateFacilities < ActiveRecord::Migration[6.0]
  def change
    create_table :facilities do |t|
      t.integer :jiro_id
      t.boolean :is_renge
      t.boolean :is_tissue
      t.boolean :is_apron
      t.boolean :is_water_server
      t.boolean :is_trash_box
      t.boolean :is_vending_machine
      t.boolean :is_hair_tie
      t.integer :in_store_pending
      t.string :seasoning1
      t.string :seasoning2
      t.string :seasoning3
      t.string :seasoning4
      t.string :seasoning5

      t.timestamps
    end
  end
end
