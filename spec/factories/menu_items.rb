# == Schema Information
#
# Table name: menu_items
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
#  topping7        :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  jiro_id         :integer
#
FactoryBot.define do
  factory :menu_item do
    jiro_id { 1 }
    price { 1000 }

    trait :main_menu do
      name { '豚ラーメン' }
      is_main { true }
      noodle_quantity { 300 }
      note { 'マシマシ禁止' }
      topping1 { 'ヤサイ' }
      topping2 { 'アブラ' }
      topping3 { 'カラアゲ' }
      topping4 { 'ガリマヨ' }
      topping5 { 'ニンニク' }
      topping6 { 'ショウガ' }
      topping7 { 'カラタマ' }
    end

    trait :option_menu do
      name { '生卵' }
      is_main { false }
    end
  end
end
