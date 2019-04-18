class ApplicationPolicy
  attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @record = record
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

  class Scope
    attr_reader :user, :scope

    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      scope.all
    end
  end

  def user_auth?
    authorize_user
  end

  private

  def authorize_user
    @record.user_id == @user.id
  end
end
