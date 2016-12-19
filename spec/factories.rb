FactoryGirl.define do
  factory :spot do
    name "MyString"
    location "MyString"
    latitude 1.5
    longitude 1.5
  end
  factory :user do
    email 'test@example.com'
    password 'f4k3p455w0rd'

    # if needed
    # is_active true
  end
end
