FactoryGirl.define do
  factory :freedive_session do
    user nil
    divespot nil
    gear_set nil
    start_at "2016-12-21 00:50:01"
    end_at "2016-12-21 00:50:01"
    enjoyment 1
    comments "MyText"
    tip_for_others "MyText"
    map_tracks ""
    visibility 1
  end
  factory :buddy do

  end
  factory :sighting do

  end
  factory :animal do
    name "MyString"
    image_url "MyString"
    description "MyText"
  end
  factory :dive do
    dive_types ""
    computer false
    start_at "2016-12-21 00:20:12"
    end_at "2016-12-21 00:20:12"
    max_depth 1.5
    avg_depth 1.5
    min_temp 1
    max_temp 1
    data_points ""
    sample_interval 1
  end
  factory :scubadive do
    user nil
    divespot nil
    gear_set nil
    start_at "2016-12-20 21:22:17"
    end_at "2016-12-20 21:22:17"
    enjoyment 1
    comments "MyText"
    dive_type "MyString"
    tip_for_others "MyText"
    max_depth 1.5
    avg_depth 1.5
    min_temp 1.5
    max_temp 1.5
    visibility 1
    start_air 1
    end_air 1
    polygon ""
  end
  factory :freedive do
    user nil
    divespot nil
    gear_set nil
    start_at "2016-12-20 21:21:55"
    end_at "2016-12-20 21:21:55"
    enjoyment 1
    comments "MyText"
    dive_type "MyString"
    tip_for_others "MyText"
    max_depth 1.5
    avg_depth 1.5
    min_temp 1
    max_temp 1
    visibility 1
    map_tracks ""
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
    location = {city: "divespot_city", state: "divespot_state", region: "divespot_region", country: "divespot_country"}
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
    location = {city: "divespot_city", state: "divespot_state", region: "divespot_region", country: "divespot_country"}

    # if needed
    # is_active true
  end
end
