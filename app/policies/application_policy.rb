class ApplicationPolicy < ActionPolicy::Base
  scope_for :data do |data|
    return data
  end

  def default_authorization_policy_class
    DefaultPolicy
  end
end
