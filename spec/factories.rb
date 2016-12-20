FactoryGirl.define do
  factory :scubadife, class: 'Scubadive' do
    user nil
    divespot nil
    gear_set nil
    start_at "2016-12-20 19:10:14"
    end_at "2016-12-20 19:10:14"
    enjoyment 1
    comments "MyText"
    dive_type "MyString"
    tip "MyText"
    max_depth 1.5
    avg_depth "MyString"
    float "MyString"
    min_temp 1.5
    max_temp 1.5
    visibility 1
    start_air 1
    end_air 1
    polygon ""
  end
  factory :gear_use do
    gear_set nil
    gear nil
  end
  factory :gear_set do
    user nil
    name "MyString"
  end
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
