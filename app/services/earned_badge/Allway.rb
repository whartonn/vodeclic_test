class EarnedBadge::Allway < EarnedBadge

  def achieved?
    @user.videos.count >= Video.all.count
  end

  def reward
    badge = Badge.where(name: "All-Way").first
    @user.link_with_badge(badge.id)
  end

end