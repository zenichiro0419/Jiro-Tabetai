class CreateTableSeasonings < ActiveRecord::Migration[6.0]
  def change
    create_table :table_seasonings do |t|
      t.string :name
      t.integer :jiro_id

      t.timestamps
    end
  end
end
