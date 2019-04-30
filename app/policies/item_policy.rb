class ItemPolicy < ApplicationPolicy
  attr_reader :user, :item

  def initialize(user, item)
    @user = user
    @item = item
  end

  def index?
    authorize_user
  end

  def show?
    authorize_user
  end

  def create?
    authorize_user
  end

  def new?
    authorize_user
  end

  def update?
    authorize_user
  end

  def edit?
    update?
  end

  def destroy?
    authorize_user
  end

  private

  def authorize_user
    @item.user_id == @user.id
  end
end
