class OrderProductPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    user != record.product.user
  end

  def destroy?
    user == record.order.user
  end
end
