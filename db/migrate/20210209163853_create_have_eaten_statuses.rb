class CreateHaveEatenStatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :have_eaten_statuses do |t|
      t.references :jiro, null: false, foreign_key: true
      t.references :jirolian, null: false, foreign_key: true

      t.timestamps
    end
  end
end
