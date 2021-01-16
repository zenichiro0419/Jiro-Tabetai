# == Schema Information
#
# Table name: facilities
#
#  id                 :bigint           not null, primary key
#  in_store_pending   :integer
#  is_apron           :boolean
#  is_hair_tie        :boolean
#  is_renge           :boolean
#  is_tissue          :boolean
#  is_trash_box       :boolean
#  is_vending_machine :boolean
#  is_water_server    :boolean
#  seasoning1         :integer
#  seasoning2         :integer
#  seasoning3         :integer
#  seasoning4         :integer
#  seasoning5         :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  jiro_id            :integer
#
FactoryBot.define do
  factory :facility do
    jiro_id { 1 }
    is_renge { false }
    is_tissue { false }
    is_apron { false }
    is_water_server { false }
    is_trash_box { false }
    is_vending_machine { false }
    is_hair_tie { false }
    in_store_pending { 1 }
    seasoning1 { "MyString" }
    seasoning2 { "MyString" }
    seasoning3 { "MyString" }
    seasoning4 { "MyString" }
    seasoning5 { "MyString" }
  end
end
