class AddImageToJirolians < ActiveRecord::Migration[6.0]
  def change
    add_column :jirolians, :image, :string
  end
end
