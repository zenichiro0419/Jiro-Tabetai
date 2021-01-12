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
#  information            :text(65535)
#  is_closed              :boolean
#  is_renge               :boolean
#  name                   :string(255)      not null
#  payment_method         :integer
#  phone_number           :string(255)
#  seat_count             :integer
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  registered_jirolian_id :integer
#
class Jiro < ApplicationRecord
  has_many :table_seasoning
  has_many :menu
  has_many :option_menu
  has_many :business_hour

  enum payment_method: {default: 0, only_cash: 1, available_bisides_cash: 2}, _prefix: true
  enum how_to_order: {default: 0, meal_voucher_system: 1, order_system: 2}, _prefix: true
  enum call_timing: {default: 0, submit_meal_voucher: 1, boiled_noodles: 2}, _prefix: true
end
