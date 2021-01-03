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
#  in_store_pending       :integer
#  information            :text(65535)
#  is_apron               :boolean
#  is_closed              :boolean
#  is_parking_area        :boolean
#  is_renge               :boolean
#  is_rest_room           :boolean
#  is_tissue              :boolean
#  is_trash_box           :boolean
#  is_water_server        :boolean
#  name                   :string(255)
#  payment_method         :integer
#  phone_number           :string(255)
#  seat_count             :integer
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  registered_jirolian_id :integer
#
require 'rails_helper'

RSpec.describe Jiro, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
