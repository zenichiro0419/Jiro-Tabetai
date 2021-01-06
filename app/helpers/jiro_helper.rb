module JiroHelper
  # @params [boolean] facility
  # @return [string]
  def exist(facility)
    return '未設定' if facility.nil?
    return '○' if facility
    return '×' unless facility
  end

  # @params [integer] seat_count
  # @return [string]
  def show_waiting_seat(seat_count)
    return '未設定' if seat_count.nil?
    return "○(#{seat_count})" if seat_count.positive?
    return '×' if seat_count.zero?
  end

  # @params [Array] table_seasonings
  # @return [string] list
  def table_seasoning_list(table_seasonings)
    list = ''
    if table_seasonings.blank?
      list = '未設定'
    else
      table_seasonings.each { |seasoning| list += "#{seasoning} / " }
      list
    end
  end
end
