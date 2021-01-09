# == Schema Information
#
# Table name: toppings
#
#  id           :bigint           not null, primary key
#  name         :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  main_menu_id :integer
#
class Topping < ApplicationRecord
  belongs_to :main_menu
end
