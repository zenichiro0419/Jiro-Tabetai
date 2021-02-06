class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.integer :jirolian_id
      t.integer :jiro_id
      t.text :content
      t.integer :soup
      t.integer :noodle
      t.integer :boiled_vegetable
      t.integer :roasted_pork
      t.string :called

      t.timestamps
    end
  end
end
