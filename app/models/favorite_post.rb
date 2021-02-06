# == Schema Information
#
# Table name: favorite_posts
#
#  id          :bigint           not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  jirolian_id :bigint           not null
#  post_id     :bigint           not null
#
# Indexes
#
#  index_favorite_posts_on_jirolian_id  (jirolian_id)
#  index_favorite_posts_on_post_id      (post_id)
#
# Foreign Keys
#
#  fk_rails_...  (jirolian_id => jirolians.id)
#  fk_rails_...  (post_id => posts.id)
#
class FavoritePost < ApplicationRecord
  belongs_to :jirolian
  belongs_to :post

  # 1つのpostに対して1つのuserを限定する(postとuserの組み合わせが同じなのは1パターンのみ)。
  # scope: :jirolian_idがないとpost_idの重複が許されないため、1回favで終わる。
  validates_uniqueness_of :post_id, scope: :jirolian_id
end
