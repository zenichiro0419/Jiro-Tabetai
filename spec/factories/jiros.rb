FactoryBot.define do
  factory :jiro do
    name { "MyString" }
    address { "MyString" }
    phone_number { "MyString" }
    access { "MyString" }
    hp_url { "MyString" }
    is_parking_area { false }
    seat_count { 1 }
    payment_method { 1 }
    how_to_order { 1 }
    call_timing { 1 }
    is_renge { false }
    is_tissue { false }
    is_apron { false }
    is_water_server { false }
    is_trash_box { false }
    is_rest_room { false }
    in_store_pending { 1 }
    information { "MyText" }
    is_closed { false }
    registered_jirolian_id { 1 }
  end
end
