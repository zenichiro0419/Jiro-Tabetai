# == Schema Information
#
# Table name: facilities
#
#  id                 :bigint           not null, primary key
#  in_store_pending   :integer
#  is_apron           :boolean
#  is_hair_tie        :boolean
#  is_renge           :boolean
#  is_tissue          :boolean
#  is_trash_box       :boolean
#  is_vending_machine :boolean
#  is_water_server    :boolean
#  seasoning1         :string(255)
#  seasoning2         :string(255)
#  seasoning3         :string(255)
#  seasoning4         :string(255)
#  seasoning5         :string(255)
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  jiro_id            :integer
#
class Facility < ApplicationRecord
end
