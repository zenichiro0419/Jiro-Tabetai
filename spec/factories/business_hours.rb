FactoryBot.define do
  factory :business_hour do
    jiro_id { 1 }
    wday { 1 }
    category { "MyString" }
    start_at { "MyString" }
    end_at { "MyString" }
  end
end
