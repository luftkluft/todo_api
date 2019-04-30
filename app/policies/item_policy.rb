class ItemPolicy < ApplicationPolicy
  attr_reader :user_todo_id, :item

  def initialize(user, item)
    @user_todo_id = user.todos.ids
    @item = item
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
    @user_todo_id.include?(@item.todo_id)
  end
end
