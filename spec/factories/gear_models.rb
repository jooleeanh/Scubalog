FactoryGirl.define do
  factory :gear_use do
    gear_set nil
    gear nil

    trait :invalid do
    end
    trait :updated do
    end
  end

  factory :gear_set do
    user nil
    name "MyString"

    trait :invalid do
    end
    trait :updated do
    end
  end

  factory :gear do
    category "MyString"
    brand "MyString"
    model "MyString"
    size "MyString"
    detail "MyString"
    purchased_on "2016-12-20"

    trait :invalid do
    end
    trait :updated do
    end
  end
end
