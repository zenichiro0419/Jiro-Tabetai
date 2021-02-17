class CreateRelationships < ActiveRecord::Migration[6.0]
  def change
    create_table :relationships do |t|
      t.references :jirolian, foreign_key: true
      t.references :follow, foreign_key: {to_table: :jirolians}

      t.timestamps

      t.index [:jirolian_id, :follow_id], unique: true
    end
  end
end
