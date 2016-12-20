FactoryGirl.define do
  factory :gear do
    category "MyString"
    brand "MyString"
    model "MyString"
    size "MyString"
    detail "MyString"
    purchased_on "2016-12-20"
  end
  factory :divespot do
    name "MyString"
    location "MyString"
    latitude 1.5
    longitude 1.5
    max_depth 1.5
    avg_depth 1.5
    salinity 1.5
    shore false
    entry_difficulty "MyString"
  end
  factory :user do
    email 'test@example.com'
    password 'f4k3p455w0rd'

    # if needed
    # is_active true
  end
end
