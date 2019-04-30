class CommentPolicy < ApplicationPolicy
  attr_reader :user_todo_ids, :comment

  def initialize(user, comment)
    @user_todo_ids = user.todos.ids
    @comment = comment
  end

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
    Item.where(todo_id: @user_todo_ids).ids.include?(@comment.item_id)
  end
end
