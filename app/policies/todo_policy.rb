class TodoPolicy
  attr_reader :user, :todo

  def initialize(user, todo)
    @user = user
    @todo = todo
  end

  def show?
    authorize_user
  end

  def update?
    authorize_user
  end

  def destroy?
    authorize_user
  end

  def user_todo?
    authorize_user
  end

  private

  def authorize_user
    @todo.user_id == @user.id
  end
end
