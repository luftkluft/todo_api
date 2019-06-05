class TodoPolicy < ApplicationPolicy
  def index?
    authorize_user
  end

  def show?
    authorize_user
  end

  def create?
    authorize_user
  end

  def update?
    authorize_user
  end

  def destroy?
    authorize_user
  end

  private

  def authorize_user
    @record.user_id == @user.id
  end
end
