class CreateFavoritePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :favorite_posts do |t|
      t.integer :jirolian_id
      t.integer :post_id

      t.timestamps
    end
  end
end
