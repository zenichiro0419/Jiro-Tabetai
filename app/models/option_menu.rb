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
class OptionMenu < ApplicationRecord
  belongs_to :jiro
end
