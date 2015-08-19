class EarnedBadge
  attr_accessor :user
  
  def initialize(user_id)
    @user = User.find(user_id)
  end

  def achieved?
    # override to specify achievement criteria
  end

  def reward
    # override to grant badge
  end

end