
FactoryGirl.define do
  factory :arcade do
    association :game
    association :location
    comment 'Broken 1UP button'
  end
end
