module JirosHelper
  LUNCH_TIME = 'lunch'.freeze
  DINNER_TIME = 'dinner'.freeze

  # @params [boolean] facility
  # @return [string]
  def exist(facility)
    return '未設定' if facility.nil?

    facility ? '○' : '×'
  end

  # @params [integer] seat_count
  # @return [string]
  def show_waiting_seat(seat_count)
    return '未設定' if seat_count.nil?
    return "○(#{seat_count}人)" if seat_count.positive?
    return '×' if seat_count.zero?
  end

  # @params [Array] table_seasonings
  # @return [string] one_line_list
  def show_one_line_list(list_items)
    one_line_list = ''
    if list_items.blank?
      one_line_list = '未設定'
    else
      list_items.each { |item| one_line_list += "#{item} / " if item.present? }
      one_line_list
    end
  end

  # @params [Hash] wdays_open_list => [integer] key, [Array]value
  # @params [integer] wday
  # @return [string] jiro_open_status
  def show_business_hour(wdays_open_list, wday)
    return if wdays_open_list.blank?

    jiro_open_status = []
    wdays_open_list[wday].each do |open_status|
      open_status.is_holiday.present? ? jiro_open_status.push('定休日') : lunch_or_dinner(open_status, jiro_open_status)
    end
    jiro_open_status.join(' ')
  end

  # @params [BusinessHour] open_status
  # @params [Array] jiro_open_status
  # @return [Array] jiro_open_status
  def lunch_or_dinner(open_status, jiro_open_status)
    case open_status.category
    when LUNCH_TIME
      jiro_open_status.push("前半の部：#{from_open_to_end(open_status.start_at, open_status.end_at)}")
    when DINNER_TIME
      jiro_open_status.push("後半の部：#{from_open_to_end(open_status.start_at, open_status.end_at)}")
    end
    jiro_open_status
  end

  # @params [string] start_at, end_at
  # @return [string]
  def from_open_to_end(start_at, end_at)
    "#{start_at} 〜 #{end_at}" if start_at.present? && end_at.present?
  end
end
