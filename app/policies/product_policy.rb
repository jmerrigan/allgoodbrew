class ProductPolicy < ApplicationPolicy
  attr_reader :user, :product
 
  def initialize(user, product)
    @user = user
    @product = product
  end
  
  def edit?
    user == product.shop_profile.user
  end

  def destroy?
    user == product.shop_profile.user
  end
end
