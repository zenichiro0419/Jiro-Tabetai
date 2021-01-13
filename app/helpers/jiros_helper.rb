module JirosHelper
  LUNCH_TIME = 'lunch'.freeze
  DINNER_TIME = 'dinner'.freeze
  HOLIDAY = 'holiday'.freeze
  START_AT = 0
  END_AT = 1

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
  # @return [string] one_line_list
  def show_one_line_list(list_items)
    one_line_list = ''
    if list_items.blank?
      one_line_list = '未設定'
    else
      list_items.each { |item| one_line_list += "#{item} / " }
      one_line_list
    end
  end

  def toppings(main_menu)
    [main_menu.topping1, main_menu.topping2, main_menu.topping3, main_menu.topping4, main_menu.topping5,
     main_menu.topping6, main_menu.topping7]
  end

  # @params [Hash] business_hour_list
  # @params [integer] wday
  # @return [string] jiro_open_status
  def show_business_hour(business_hour_list, wday)
    jiro_open_status = []
    business_hour_list[wday].each do |category, business_hour|
      case category
      when HOLIDAY
        jiro_open_status.push('定休日')
        break
      when LUNCH_TIME
        jiro_open_status.push("前半の部：#{from_open_to_end(business_hour[START_AT], business_hour[END_AT])}")
      when DINNER_TIME
        jiro_open_status.push("後半の部：#{from_open_to_end(business_hour[START_AT], business_hour[END_AT])}")
      else
        jiro_open_status
      end
    end
    jiro_open_status.join('　')
  end

  # @params [string] start_at, end_at
  # @return [string]
  def from_open_to_end(start_at, end_at)
    "#{start_at} 〜 #{end_at}" if start_at.present? && end_at.present?
  end
end
