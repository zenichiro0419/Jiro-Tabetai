# == Schema Information
#
# Table name: have_eaten_statuses
#
#  id          :bigint           not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  jiro_id     :bigint           not null
#  jirolian_id :bigint           not null
#
# Indexes
#
#  index_have_eaten_statuses_on_jiro_id      (jiro_id)
#  index_have_eaten_statuses_on_jirolian_id  (jirolian_id)
#
# Foreign Keys
#
#  fk_rails_...  (jiro_id => jiros.id)
#  fk_rails_...  (jirolian_id => jirolians.id)
#
require 'rails_helper'

RSpec.describe HaveEatenStatus, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
