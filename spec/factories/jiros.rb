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
#  image                  :string(255)
#  information            :text(65535)
#  is_closed              :boolean
#  is_parking_area        :boolean
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
    access { 'MyString' }
    address { 'MyString' }
    call_timing { 1 }
    how_to_order { 1 }
    hp_url { 'MyString' }
    is_closed { false }
    is_parking_area { false }
    name { '千里眼' }
    information { 'MyText' }
    payment_method { 1 }
    phone_number { 'MyString' }
    seat_count { 1 }
    registered_jirolian_id { 1 }
  end
end
