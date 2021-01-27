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
    jiro_id { 1 }
    is_holiday { true }
    start_at { '11:00' }
    end_at { '15:00' }

    trait :sunday do
      wday { 0 }
    end

    trait :monday do
      wday { 1 }
    end

    trait :tuesday do
      wday { 2 }
    end

    trait :wednesday do
      wday { 3 }
    end

    trait :thursday do
      wday { 4 }
    end

    trait :friday do
      wday { 5 }
    end

    trait :saturday do
      wday { 6 }
    end

    trait :lunch do
      category { 1 }
      start_at { '11:00' }
      end_at { '15:00' }
    end

    trait :dinner do
      category { 2 }
      start_at { '17:00' }
      end_at { '21:00' }
    end

    trait :holiday do
      is_holiday { true }
    end

    trait :open do
      is_holiday { false }
    end
  end
end
