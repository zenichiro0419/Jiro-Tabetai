# == Schema Information
#
# Table name: posts
#
#  id               :bigint           not null, primary key
#  boiled_vegetable :integer
#  called           :string(255)
#  content          :text(65535)
#  noodle           :integer
#  roasted_pork     :integer
#  soup             :integer
#  wating_time      :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  jiro_id          :integer
#  jirolian_id      :integer
#
FactoryBot.define do
  factory :post do
    jirolian_id { 1 }
    jiro_id { 1 }
    content { "MyText" }
    soup { 1 }
    noodle { 1 }
    boiled_vegetable { 1 }
    roasted_pork { 1 }
    called { "MyString" }
  end
end
