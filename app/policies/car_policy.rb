class CarPolicy < ApplicationPolicy

  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end

  def new?
    return true
  end

  def create?
    return true
  end

  def show?
    return true
  end

  def edit?
    return record.user == user || user.admin
  end

  def update?
    return true
  end


end
