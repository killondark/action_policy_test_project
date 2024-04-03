# Base class for application policies
class ApplicationPolicy < ActionPolicy::Base
  scope_for :data do |data|
    return data
  end

  def default_authorization_policy_class
    DraftPolicy
  end
end
