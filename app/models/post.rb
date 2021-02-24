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
class Post < ApplicationRecord
  has_many :favorite_posts, dependent: :destroy
  belongs_to :jirolian
  belongs_to :jiro

  enum soup: {emulsification: 1, little_emulsification: 2, non_emulsification: 3}
  enum noodle: {soft: 1, little_soft: 2, little_hard: 3, hard: 4}
  enum boiled_vegetable: {tender: 1, tough: 2}
  enum roasted_pork: {crumbly: 1, melted: 2, fatty: 3}

  validates :content, presence: true
  validates :jiro_id, presence: true
  validates :jirolian_id, presence: true

  def favorited_by?(jirolian)
    favorite_posts.where(jirolian_id: jirolian.id).exists?
  end
end
