# == Schema Information
#
# Table name: option_menus
#
#  id         :bigint           not null, primary key
#  name       :string(255)
#  price      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  jiro_id    :integer
#
FactoryBot.define do
  factory :option_menu do
    name { "MyString" }
    jiro_id { 1 }
    price { 1 }
  end
end
