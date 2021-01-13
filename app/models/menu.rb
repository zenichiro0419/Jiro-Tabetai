# == Schema Information
#
# Table name: menus
#
#  id              :bigint           not null, primary key
#  is_main         :boolean
#  name            :string(255)
#  noodle_quantity :integer
#  note            :text(65535)
#  price           :integer
#  topping1        :string(255)
#  topping2        :string(255)
#  topping3        :string(255)
#  topping4        :string(255)
#  topping5        :string(255)
#  topping6        :string(255)
#  topping7        :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  jiro_id         :integer
#
class Menu < ApplicationRecord
  belongs_to :jiro

  scope :main_menu, -> { where(is_main: true) }
  scope :option_menu, -> { where(is_main: false) }
end
