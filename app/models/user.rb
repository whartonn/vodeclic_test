class User < ActiveRecord::Base
  acts_as_decorables

  belongs_to :company

  has_many :badge_users
  has_many :badges, through: :badge_users

  has_many :video_users
  has_many :videos, through: :video_users

  def to_s
    name
  end

  def watch_video video
    videos << video
  end

  def watched? video
    videos.include? video
  end
  
  def link_with_badge(badge_id)
    BadgeUser.find_or_create_by(badge_id: badge_id, user_id: self.id)
  end
end
