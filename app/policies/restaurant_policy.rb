class RestaurantPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end


  def show?
    # everyone can access show endpoint
    true
  end

  def update?
    # only restaurant owners can access it
    # record - restaurant
    # user - current user
    record.user == user
  end
end
