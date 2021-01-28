class AddColumnsToJirolians < ActiveRecord::Migration[6.0]
  def change
    add_column :jirolians, :provider, :string
    add_column :jirolians, :uid, :string
    add_column :jirolians, :username, :string
  end
end
