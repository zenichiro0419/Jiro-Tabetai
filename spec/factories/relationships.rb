# == Schema Information
#
# Table name: relationships
#
#  id          :bigint           not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  follow_id   :bigint
#  jirolian_id :bigint
#
# Indexes
#
#  index_relationships_on_follow_id                  (follow_id)
#  index_relationships_on_jirolian_id                (jirolian_id)
#  index_relationships_on_jirolian_id_and_follow_id  (jirolian_id,follow_id) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (follow_id => jirolians.id)
#  fk_rails_...  (jirolian_id => jirolians.id)
#
FactoryBot.define do
  factory :relationship do
    
  end
end
