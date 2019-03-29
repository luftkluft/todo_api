module ExceptionHandler
  extend ActiveSupport::Concern

  class AuthenticationError < StandardError; end
  class MissingToken < StandardError; end
  class InvalidToken < StandardError; end

  included do
    rescue_from ActiveRecord::RecordInvalid, with: :unprocessable_response
    rescue_from ExceptionHandler::AuthenticationError, with: :unauthorized_request
    rescue_from ExceptionHandler::MissingToken, with: :unprocessable_response
    rescue_from ExceptionHandler::InvalidToken, with: :unprocessable_response

    rescue_from ActiveRecord::RecordNotFound do |exception|
      json_response({ message: exception.message }, :not_found)
    end
  end

  private

  def unprocessable_response(exception)
    json_response({ message: exception.message }, :unprocessable_entity)
  end

  def unauthorized_request(exception)
    json_response({ message: exception.message }, :unauthorized)
  end
end
