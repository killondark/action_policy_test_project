class PostPolicy < ApplicationPolicy
  def index?
    # allow everyone to perform "index" activity on posts
    true
  end

  # everyone can see any post
  def show?
    true
  end

  def update?
    # `user` is a performing subject,
    # `record` is a target object (post we want to update)
    user.admin? || (user.id == record.user_id)
  end
end