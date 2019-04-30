module ControllerSpecHelper
  def valid_token(user_id)
    JsonWebToken.encode(user_id: user_id)
  end

  def expired_token(user_id)
    JsonWebToken.encode({ user_id: user_id }, (Time.now.to_i - 10))
  end

  def valid_headers
    {
      'Authorization' => valid_token(user.id),
      'Content-Type' => 'application/json'
    }
  end

  def invalid_headers
    {
      'Authorization' => nil,
      'Content-Type' => 'application/json'
    }
  end
end
