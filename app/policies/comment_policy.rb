class CommentPolicy < ApplicationPolicy
  attr_reader :user_todo_id, :comment

  def initialize(user, comment)
    @user_todo_id = user.todos.ids
    @comment =comment
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
    @comment.item_id == Item.find_by(todo_id: @user_todo_id).id
  end
end
