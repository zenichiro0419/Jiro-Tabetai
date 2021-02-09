# == Schema Information
#
# Table name: wanna_eat_statuses
#
#  id          :bigint           not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  jiro_id     :bigint           not null
#  jirolian_id :bigint           not null
#
# Indexes
#
#  index_wanna_eat_statuses_on_jiro_id      (jiro_id)
#  index_wanna_eat_statuses_on_jirolian_id  (jirolian_id)
#
# Foreign Keys
#
#  fk_rails_...  (jiro_id => jiros.id)
#  fk_rails_...  (jirolian_id => jirolians.id)
#
class WannaEatStatus < ApplicationRecord
  belongs_to :jiro
  belongs_to :jirolian

  validates_uniqueness_of :jiro_id, scope: :jirolian_id
end
