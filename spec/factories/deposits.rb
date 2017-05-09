FactoryGirl.define do
  factory :deposit do
    trade_no "MyString"
    fee 1
    user_id 1
    checkouted false
  end
end
