# == Schema Information
#
# Table name: business_hours
#
#  id         :bigint           not null, primary key
#  category   :integer          default("default")
#  end_at     :string(255)
#  is_holiday :boolean          default(FALSE)
#  start_at   :string(255)
#  wday       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  jiro_id    :integer
#
FactoryBot.define do
  factory :business_hour do
    (0..6).each do |wday|
      (1..2).each do |category|
        jiro_id { 1 }
        wday { wday }
        is_holiday { false }
        category { category }
        start_at { '11:00' }
        end_at { '15:00' }
      end
    end
  end
end
