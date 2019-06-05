class CommentPolicy < ApplicationPolicy
  def show?
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
    @record.item.todo.user_id == @user.id
  end
end
