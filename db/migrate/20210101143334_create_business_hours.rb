class CreateBusinessHours < ActiveRecord::Migration[6.0]
  def change
    create_table :business_hours do |t|
      t.integer :jiro_id
      t.integer :wday
      t.string :category
      t.string :start_at
      t.string :end_at

      t.timestamps
    end
  end
end
