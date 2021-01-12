# == Schema Information
#
# Table name: menus
#
#  id              :bigint           not null, primary key
#  is_main         :boolean
#  name            :string(255)
#  noodle_quantity :integer
#  note            :text(65535)
#  price           :integer
#  topping1        :string(255)
#  topping2        :string(255)
#  topping3        :string(255)
#  topping4        :string(255)
#  topping5        :string(255)
#  topping6        :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  jiro_id         :integer
#
FactoryBot.define do
  factory :menu do
    name { "MyString" }
    jiro_id { 1 }
    price { 1 }
    is_main { false }
    noodle_quantity { 1 }
    note { "MyText" }
    topping1 { "MyString" }
    topping2 { "MyString" }
    topping3 { "MyString" }
    topping4 { "MyString" }
    topping5 { "MyString" }
    topping6 { "MyString" }
  end
end
