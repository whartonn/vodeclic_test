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

  factory :video_1, class: Video do
    name 'Ruby variables'
  end
  factory :video_2, class: Video do
    name 'Ruby operators'
  end
  factory :video_3, class: Video do
    name 'Ruby methods'
  end
  factory :video_4, class: Video do
    name 'Ruby classes'
  end
    
  factory :user_1, class: User do
    name 'Thomas' 
    company :company_1
    videos [:video_1,:video_2,:video_3,:video_4]
    badges [:badge_1,:badge2]
  end
  factory :user_2, class: User do
    name 'Guillaume' 
    company :company_1
    videos [:video_1,:video_2]
    badges [:badge_1]
  end
  factory :user_3, class: User do
    name 'David Heinemeier Hansson' 
    company :company_2
    videos [:video_4]
    badges [:badge_3]
  end
  factory :user_4, class: User do
    name 'Joe Ferris' 
    company :company_2
    videos [:video_4]
    badges [:badge_3]
  end
end

