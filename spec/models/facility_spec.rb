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
#  seasoning1         :integer
#  seasoning2         :integer
#  seasoning3         :integer
#  seasoning4         :integer
#  seasoning5         :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  jiro_id            :integer
#
require 'rails_helper'

RSpec.describe Facility, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
