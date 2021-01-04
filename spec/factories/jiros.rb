# == Schema Information
#
# Table name: jiros
#
#  id                     :bigint           not null, primary key
#  access                 :string(255)
#  address                :string(255)
#  call_timing            :integer
#  how_to_order           :integer
#  hp_url                 :string(255)
#  in_store_pending       :integer
#  information            :text(65535)
#  is_apron               :boolean
#  is_closed              :boolean
#  is_parking_area        :boolean
#  is_renge               :boolean
#  is_rest_room           :boolean
#  is_tissue              :boolean
#  is_trash_box           :boolean
#  is_water_server        :boolean
#  name                   :string(255)      not null
#  payment_method         :integer
#  phone_number           :string(255)
#  seat_count             :integer
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  registered_jirolian_id :integer
#
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
