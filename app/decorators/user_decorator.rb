class UserDecorator < RKit::Decorator::Base
  def infos
    "#{ self } - working for #{ compagny }"
  end
end
