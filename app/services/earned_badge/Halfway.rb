class EarnedBadge::Halfway < EarnedBadge

  def achieved?
    @user.videos.size >=2
  end

  def reward
    badge = Badge.where(name: "Half-Way").first
    @user.link_with_badge(badge.id)
  end

end