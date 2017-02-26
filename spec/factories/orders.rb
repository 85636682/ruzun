FactoryGirl.define do
  factory :order do
    orderable_type "MyString"
    orderable_id 1
    user_id 1
    amount 1
    status 1
  end
end
