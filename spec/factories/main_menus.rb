# == Schema Information
#
# Table name: main_menus
#
#  id               :bigint           not null, primary key
#  name             :string(255)
#  noodles_quantity :integer
#  note             :text(65535)
#  price            :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  jiro_id          :integer
#
FactoryBot.define do
  factory :main_menu do
    name { "MyString" }
    jiro_id { 1 }
    price { 1 }
    noodles_quantity { 1 }
    note { "MyText" }
  end
end
