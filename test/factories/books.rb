FactoryBot.define do
  factory :book do
    title { "MyString" }
    genre { "MyString" }
    coverImagePath { "MyString" }
    user { nil }
  end
end
