class ChangeNameOfJiros < ActiveRecord::Migration[6.0]
  def up
    change_column_null :jiros, :name, false, '未設定'
  end

  def down
    change_column_null :jiros, :name, true, nil
  end
end
