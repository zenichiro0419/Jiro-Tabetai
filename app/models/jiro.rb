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
#  name                   :string(255)
#  payment_method         :integer
#  phone_number           :string(255)
#  seat_count             :integer
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  registered_jirolian_id :integer
#
class Jiro < ApplicationRecord
  enum payment_method: { default: 0, only_cash: 1, available_bisides_cash: 2 }, _prefix: true
  enum how_to_order: { default: 0, meal_voucher_system: 1, order_system: 2}, _prefix: true
  enum call_timing: { default: 0, submit_meal_voucher: 1, boiled_noodles: 2}, _prefix: true

  attribute :payment_method, :integer, default: 0
  attribute :how_to_order, :integer, default: 0
  attribute :is_apron, :boolean, default: nil
  attribute :is_parking_area, :boolean, default: nil
  attribute :is_renge, :boolean, default: nil
  attribute :is_rest_room, :boolean, default: nil
  attribute :is_tissue, :boolean, default: nil       
  attribute :is_trash_box, :boolean, default: nil       
  attribute :is_water_server, :boolean, default: nil
end
