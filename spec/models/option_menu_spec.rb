# == Schema Information
#
# Table name: option_menus
#
#  id         :bigint           not null, primary key
#  name       :string(255)
#  price      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  jiro_id    :integer
#
require 'rails_helper'

RSpec.describe OptionMenu, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
