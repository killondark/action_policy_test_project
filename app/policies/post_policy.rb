class PostPolicy < ApplicationPolicy
  def index?
    true
  end

  def show?
    true
  end

  def update?
    user.admin? || (user.id == record.user_id)
  end

  relation_scope do |relation|
    return relation if user.admin?
    relation.where(user: user)
  end
end