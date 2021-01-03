# == Schema Information
#
# Table name: table_seasonings
#
#  id         :bigint           not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  jiro_id    :integer
#
require 'rails_helper'

RSpec.describe TableSeasoning, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
