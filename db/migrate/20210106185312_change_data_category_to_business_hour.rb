class ChangeDataCategoryToBusinessHour < ActiveRecord::Migration[6.0]
  def up
    change_column :business_hours, :category, :integer, default: 0
  end

  def down
    change_column :business_hours, :category, :string
  end
end
