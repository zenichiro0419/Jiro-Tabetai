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
FactoryBot.define do
  factory :table_seasoning do
    name { 'MyString' }
    jiro_id { 1 }
  end
end
