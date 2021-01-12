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
#  information            :text(65535)
#  is_closed              :boolean
#  is_renge               :boolean
#  name                   :string(255)      not null
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
