class CreateFavoritePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :favorite_posts do |t|
      t.references :jirolian, null: false, foreign_key: true
      t.references :post, null: false, foreign_key: true

      t.timestamps
    end
  end
end
