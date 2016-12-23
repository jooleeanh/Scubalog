FactoryGirl.define do
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

    trait :invalid do
    end
    trait :updated do
    end

  end
end
