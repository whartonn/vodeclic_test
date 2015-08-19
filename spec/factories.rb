FactoryGirl.define do
  factory :badge_1, class: Badge do
    name "Half-Way"
    fa_symbol  "bookmark-o"
  end
  factory :badge_2, class: Badge do
    name "All-Way"
    fa_symbol  "bookmark"
  end
  factory :badge_3, class: Badge do
    name "SpeedRun"
    fa_symbol  "bolt"
  end
end