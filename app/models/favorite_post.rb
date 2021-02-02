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
class FavoritePost < ApplicationRecord
  belongs_to :post
  belongs_to :jiro

  validates :jirolian_id, presence: true
  validates :post_id, presence: true
end
