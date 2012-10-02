# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :book do
    title "MyString"
    author "MyString"
    date_started "2012-10-01 18:17:40"
    date_finished "2012-10-01 18:17:40"
    link "MyString"
    description "MyText"
    summary "MyText"
    cover_image "MyString"
  end
end
