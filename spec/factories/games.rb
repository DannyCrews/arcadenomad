FactoryGirl.define do
  factory :game do
    name 'Space Invaders'
    release_date '1978'
    description 'Space Invaders was an early shooting game.'
    association :manufacturer, strategy: :build
  end
end
