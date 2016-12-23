FactoryGirl.define do
  factory :user do
    email 'test@example.com'
    password 'f4k3p455w0rd'
    location = {city: "divespot_city", state: "divespot_state", region: "divespot_region", country: "divespot_country"}

    # if needed
    # is_active true
    trait :invalid do
    end
    trait :updated do
    end

  end

  factory :buddy do
    trait :invalid do
    end
    trait :updated do
    end
  end
end
