class AddImageToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :wating_time, :integer
  end
end
