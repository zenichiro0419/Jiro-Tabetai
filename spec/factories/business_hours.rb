# == Schema Information
#
# Table name: business_hours
#
#  id         :bigint           not null, primary key
#  category   :integer          default("default")
#  end_at     :string(255)
#  start_at   :string(255)
#  wday       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  jiro_id    :integer
#
FactoryBot.define do
  factory :business_hour do
    jiro_id { 1 }
    wday { 1 }
    category { 'MyString' }
    start_at { 'MyString' }
    end_at { 'MyString' }
  end
end
