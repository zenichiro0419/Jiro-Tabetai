# == Schema Information
#
# Table name: favorite_posts
#
#  id          :bigint           not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  jirolian_id :integer
#  post_id     :integer
#
require 'rails_helper'

RSpec.describe FavoritePost, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
