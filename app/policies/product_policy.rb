class ProductPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
   true
  end

  def create?
    new?
  end

  def show?
    true
  end

  def edit?
   user == record.user || user.admin
  end

  def update?
    edit?
  end

  def destroy?
    edit?
  end
end
