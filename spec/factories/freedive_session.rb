FactoryGirl.define do

  factory :freedive_session do
    user nil
    divespot nil
    gear_set nil
    start_at "2016-12-21 00:50:01"
    end_at "2016-12-21 00:50:01"
    enjoyment 1
    comments "Awesome!"
    tip_for_others "MyText"
    map_tracks ""
    visibility 1

    trait :invalid do
    end
    trait :updated do
    end
  end
end
