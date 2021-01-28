# == Schema Information
#
# Table name: business_hours
#
#  id         :bigint           not null, primary key
#  category   :integer          default("default")
#  end_at     :string(255)
#  is_holiday :boolean          default(FALSE)
#  start_at   :string(255)
#  wday       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  jiro_id    :integer
#
class BusinessHour < ApplicationRecord
  belongs_to :jiro

  enum category: {default: 0, lunch: 1, dinner: 2}
end
