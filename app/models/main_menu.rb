# == Schema Information
#
# Table name: main_menus
#
#  id               :bigint           not null, primary key
#  name             :string(255)
#  noodles_quantity :integer
#  note             :text(65535)
#  price            :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  jiro_id          :integer
#
class MainMenu < ApplicationRecord
  belong_to :jiro
end
