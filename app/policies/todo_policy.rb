class TodoPolicy
  attr_reader :user, :todo

  def initialize(user, todo)
    @user = user
    @todo = todo
  end

  def user_auth?
    authorize_user
  end

  private

  def authorize_user
    @todo.user_id == @user.id
  end
end
