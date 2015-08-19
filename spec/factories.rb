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
  
  factory :company_1, class: Company do
    name "Vodeclic"
  end
  factory :company_2, class: Company do
    name 'thoughtbot'
  end
  factory :company_3, class: Company do
    name 'Basecamp'
  end
  
  
end

