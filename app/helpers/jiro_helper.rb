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
    return "○(#{seat_count})" if seat_count > 0
    return '×' if seat_count.zero?
  end
end
