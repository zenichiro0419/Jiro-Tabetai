class AddImageToJiros < ActiveRecord::Migration[6.0]
  def change
    add_column :jiros, :image, :string
  end
end
