class ItemPolicy < ApplicationPolicy
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
    item = @record
    user_todo_ids.include?(item.todo_id)
  end
end
