class Company < ActiveRecord::Base
  has_many :users

  def badges
    Badge.joins(:badge_users => {:user => :company}).where(:users => {:company_id => self.id}).select("badges.*")
  end

  def to_s
    name
  end
end
