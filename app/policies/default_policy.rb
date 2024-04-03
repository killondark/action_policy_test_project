class DefaultPolicy < ApplicationPolicy
  relation_scope do |relation|
    return relation if user.admin?
    relation.where(user: user)
  end
end