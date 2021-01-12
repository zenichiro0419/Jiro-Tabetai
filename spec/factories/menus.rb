FactoryBot.define do
  factory :menu do
    name { "MyString" }
    jiro_id { 1 }
    price { 1 }
    is_main { false }
    noodle_quantity { 1 }
    note { "MyText" }
    topping1 { "MyString" }
    topping2 { "MyString" }
    topping3 { "MyString" }
    topping4 { "MyString" }
    topping5 { "MyString" }
    topping6 { "MyString" }
  end
end
