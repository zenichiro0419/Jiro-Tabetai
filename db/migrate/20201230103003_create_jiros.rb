class CreateJiros < ActiveRecord::Migration[6.0]
  def change
    create_table :jiros do |t|
      t.string :name
      t.string :address
      t.string :phone_number
      t.string :access
      t.string :hp_url
      t.boolean :is_parking_area
      t.integer :seat_count
      t.integer :payment_method
      t.integer :how_to_order
      t.integer :call_timing
      t.boolean :is_renge
      t.boolean :is_tissue
      t.boolean :is_apron
      t.boolean :is_water_server
      t.boolean :is_trash_box
      t.boolean :is_rest_room
      t.integer :in_store_pending
      t.text :information
      t.boolean :is_closed
      t.integer :registered_jirolian_id

      t.timestamps
    end
  end
end
