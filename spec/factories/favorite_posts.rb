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
FactoryBot.define do
  factory :favorite_post do
    jirolian_id { 1 }
    post_id { 1 }
  end
end
