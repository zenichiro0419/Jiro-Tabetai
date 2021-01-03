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
require 'rails_helper'

RSpec.describe Topping, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
