module JiroHelper
  # @return[string]
  def exist(facility)
    return '-' if facility.nil?
    return '○' if facility
    return '×' unless facility
  end

  # @return[string]
  def show_waiting_seat(seat_count)
    return "-" if seat_count.nil?
    return "○(#{seat_count})" if seat_count > 0
    return "×" if seat_count.zero?
  end
end
