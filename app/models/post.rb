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
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  jiro_id          :integer
#  jirolian_id      :integer
#
class Post < ApplicationRecord
  has_many :favorite_posts, dependent: :destroy
  belongs_to :jirolian, optional: true

  validates :content, presence: true
  validates :jiro_id, presence: true
  validates :jirolian_id, presence: true

  def favorited_by?(jirolian)
    favorite_posts.where(jirolian_id: jirolian.id).exists?
  end
end
