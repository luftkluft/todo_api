class CommentPolicy < ApplicationPolicy
  def show?
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
    user_todo_ids = @user.todos.ids
    comment = @record
    Item.where(todo_id: user_todo_ids).ids.include?(comment.item_id)
  end
end
