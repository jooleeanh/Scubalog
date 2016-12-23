FactoryGirl.define do
  factory :sighting do
    trait :invalid do
    end
    trait :updated do
    end
  end

  factory :animal do
    name "MyString"
    image_url "MyString"
    description "MyText"

    trait :invalid do
    end
    trait :updated do
    end
  end
end
