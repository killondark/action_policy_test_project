class DefaultPolicy < ApplicationPolicy
  def default_authorization_policy_class
    DraftPolicy
  end
end