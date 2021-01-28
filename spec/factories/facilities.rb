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
    in_store_pending { 6 }
    is_apron { true }
    is_hair_tie { false }
    is_renge  { true }
    is_tissue { false }
    is_trash_box { true }
    is_vending_machine { true }
    is_water_server { false }
    seasoning1 { 1 }
    seasoning2 { 2 }
    seasoning3 { 3 }
    seasoning4 { 4 }
    seasoning5 { 5 }
    jiro_id { 1 }
  end
end
