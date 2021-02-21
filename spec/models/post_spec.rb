# == Schema Information
#
# Table name: posts
#
#  id               :bigint           not null, primary key
#  boiled_vegetable :integer
#  called           :string(255)
#  content          :text(65535)
#  noodle           :integer
#  roasted_pork     :integer
#  soup             :integer
#  wating_time      :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  jiro_id          :integer
#  jirolian_id      :integer
#
require 'rails_helper'

RSpec.describe Post, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
