# == Schema Information
#
# Table name: business_hours
#
#  id         :bigint           not null, primary key
#  category   :integer          default("default")
#  end_at     :string(255)
#  start_at   :string(255)
#  wday       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  jiro_id    :integer
#
require 'rails_helper'

RSpec.describe BusinessHour, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
