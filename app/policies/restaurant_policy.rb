class RestaurantPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  # everyone can access show endpoint
  def show?
    true
  end
end
