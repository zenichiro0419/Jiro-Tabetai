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
#  is_parking_area        :boolean
#  name                   :string(255)      not null
#  payment_method         :integer
#  phone_number           :string(255)
#  seat_count             :integer
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  registered_jirolian_id :integer
#
class Jiro < ApplicationRecord
  has_one :facility
  has_many :menu_items
  has_many :business_hours
  has_many :favorite_posts

  enum payment_method: {default: 0, only_cash: 1, available_bisides_cash: 2}, _prefix: true
  enum how_to_order: {default: 0, meal_voucher_system: 1, order_system: 2}, _prefix: true
  enum call_timing: {default: 0, submit_meal_voucher: 1, boiled_noodles: 2}, _prefix: true

  validates :name, presence: true
  # VALID_PHONE_NUMBER_REGEX = /\A0(\d{1}[-(]?\d{4}|\d{2}[-(]?\d{3}|\d{3}[-(]?\d{2}|\d{4}[-(]?\d{1})[-)]?\d{4}\z|\A0[5789]0-?\d{4}-?\d{4}\z/.freeze
  # validates :phone_number, format: {with: VALID_PHONE_NUMBER_REGEX}
end
