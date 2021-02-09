class CreateWannaEatStatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :wanna_eat_statuses do |t|
      t.references :jiro, null: false, foreign_key: true
      t.references :jirolian, null: false, foreign_key: true

      t.timestamps
    end
  end
end
