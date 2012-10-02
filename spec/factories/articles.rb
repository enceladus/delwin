# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :article do
    title "MyString"
    slug "MyString"
    body "MyText"
    excerpt "MyText"
    main_image "MyString"
  end
end
