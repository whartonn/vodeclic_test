class EarnedBadgeSpeedrun
  attr_accessor :user
  
  def initialize(user_id)
    @user = User.find(user_id)
  end

  def achieved?
    @user.videos.where(name: 'Ruby classes').size >= 1
  end

  def reward
    badge = Badge.where(name: "SpeedRun").first
    @user.link_with_badge(badge.id)
  end

end