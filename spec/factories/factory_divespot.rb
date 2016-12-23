FactoryGirl.define do
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

    trait :invalid do
    end
    trait :updated do
    end

  end
end
