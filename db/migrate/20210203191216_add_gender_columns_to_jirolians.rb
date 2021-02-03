class AddGenderColumnsToJirolians < ActiveRecord::Migration[6.0]
  def change
    add_column :jirolians, :gender, :integer
  end
end
