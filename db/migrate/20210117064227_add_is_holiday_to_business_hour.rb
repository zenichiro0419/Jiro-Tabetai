class AddIsHolidayToBusinessHour < ActiveRecord::Migration[6.0]
  def up
    add_column :business_hours, :is_holiday, :boolean, default: false
  end

  def down
    remove_column :business_hours, :is_holiday, :boolean, default: false
  end
end
