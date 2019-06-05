class AuthenticateUser
  def initialize(email, password)
    @email = email
    @password = password
  end

  def call
    JsonWebToken.encode(user_id: user.id)
  end

  private

  def user
    user = User.find_by(email: @email)
    return user if user&.authenticate(@password)

    raise(ExceptionHandler::AuthenticationError, I18n.t('invalid_credentials'))
  end
end
