class UserPolicy < ApplicationPolicy
  relation_scope do |relation|
    return relation if user.admin?
    relation.where(id: user.id)
  end
end