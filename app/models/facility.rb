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
class Facility < ApplicationRecord
  belongs_to :jiro, optional: true

  validates :jiro_id, uniqueness: true, presence: true

  enum seasoning1: {カエシ醤油: 1, 黒コショウ: 2, 白コショウ: 3, 一味唐辛子: 4, カレー粉: 5, お酢: 6},
       _prefix: true
  enum seasoning2: {カエシ醤油: 1, 黒コショウ: 2, 白コショウ: 3, 一味唐辛子: 4, カレー粉: 5, お酢: 6},
       _prefix: true
  enum seasoning3: {カエシ醤油: 1, 黒コショウ: 2, 白コショウ: 3, 一味唐辛子: 4, カレー粉: 5, お酢: 6},
       _prefix: true
  enum seasoning4: {カエシ醤油: 1, 黒コショウ: 2, 白コショウ: 3, 一味唐辛子: 4, カレー粉: 5, お酢: 6},
       _prefix: true
  enum seasoning5: {カエシ醤油: 1, 黒コショウ: 2, 白コショウ: 3, 一味唐辛子: 4, カレー粉: 5, お酢: 6, その他: 0},
       _prefix: true
end
