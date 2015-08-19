class VideoUser < ActiveRecord::Base
  belongs_to :video
  belongs_to :user
  after_save :distribute_appropriate_badges
  
  private
    def distribute_appropriate_badges
      badge = EarnedBadgeSpeedrun.new(self.user.id)
      badge.achieved? ? badge.reward : nil
    end
end
