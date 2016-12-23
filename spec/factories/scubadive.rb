FactoryGirl.define do
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

    trait :invalid do
    end
    trait :updated do
    end

  end
end
