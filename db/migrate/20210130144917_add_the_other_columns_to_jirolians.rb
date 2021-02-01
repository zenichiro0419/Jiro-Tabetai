class AddTheOtherColumnsToJirolians < ActiveRecord::Migration[6.0]
  def up
    add_column :jirolians, :birth_date, :datetime
    add_column :jirolians, :home_jiro, :string
    add_column :jirolians, :introduction, :text
    add_column :jirolians, :hp_url, :string
    add_column :jirolians, :approved_favorited, :boolean
  end

  def down
    remove_column :jirolians, :birth_date, :datetime
    remove_column :jirolians, :home_jiro, :string
    remove_column :jirolians, :introduction, :text
    remove_column :jirolians, :hp_url, :string
    remove_column :jirolians, :approved_favorited, :boolean
  end
end
