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
