module BusinessHoursHelper
  def show_wday(idx)
    case idx / 2
    when 0
      '日曜日'
    when 1
      '月曜日'
    when 2
      '火曜日'
    when 3
      '水曜日'
    when 4
      '木曜日'
    when 5
      '金曜日'
    when 6
      '土曜日'
    end
  end

  def show_lunch_or_dinner(idx)
    (idx % 2).even? ? '前半の部' : '後半の部'
  end
end
