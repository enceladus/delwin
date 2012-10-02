# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :comment do
    author "MyString"
    email "MyString"
    url "MyString"
    comment "MyText"
    article_id ""
  end
end
