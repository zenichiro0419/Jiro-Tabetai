# == Schema Information
#
# Table name: business_hours
#
#  id         :bigint           not null, primary key
#  category   :string(255)
#  end_at     :string(255)
#  start_at   :string(255)
#  wday       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  jiro_id    :integer
#
class BusinessHour < ApplicationRecord
end
