class PostPolicy < DefaultPolicy
  def index?
    true
  end

  def show?
    true
  end

  def update?
    admin? || is_owner?
  end

  private

  def admin?
    user.admin?
  end

  def is_owner?
    user.id == record.user_id
  end
end