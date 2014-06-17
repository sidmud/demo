# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :rating do
    stars 1
    user_id 1
    ratable_id 1
    ratable_type "MyString"
  end
end
