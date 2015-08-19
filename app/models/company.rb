class Company < ActiveRecord::Base
  has_many :users
  has_many :badges, through: :users

  def calculated_badges
    Badge.joins(:badge_users => {:user => :company}).where(:users => {:company_id => self.id}).select("badges.*, badge_users.id as badge_users_id, COUNT(badge_users.id) as badge_cnt").group("badges.name")
  end

  def to_s
    name
  end
end
