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

  # @params [BusinessHour] open_status
  # @return [string] open_message
  def show_business_hour(open_status)
    case open_status.category
    when LUNCH_TIME
      open_message(open_status, '前半')
    when DINNER_TIME
      open_message(open_status, '後半')
    end
  end

  # @params [BusinessHour] open_status
  # @params [string] part
  # @return [string]
  def open_message(open_status, part)
    if open_status.is_holiday?
      "#{part}の部：定休"
    else
      "#{part}の部：#{from_open_to_end(open_status.start_at, open_status.end_at)}"
    end
  end

  # @params [string] start_at, end_at
  # @return [string]
  def from_open_to_end(start_at, end_at)
    start_at.present? && end_at.present? ? "#{start_at} 〜 #{end_at}" : '未設定'
  end

  # @params [symbol] caregory
  # @return [Hash]
  def taste_spec(category)
    taste_spec_distribution = Post.group(category).count.sort.to_h
    taste_category = t('enums.post')[category].sort.to_h
    taste_spec_distribution.values.map.with_index do |count, idx|
      [taste_category.values[idx], count]
    end.to_h
  end
end
