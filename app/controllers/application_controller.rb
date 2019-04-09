class ApplicationController < ActionController::API
  include Pundit
  include Response
  include ExceptionHandler

  before_action :authorize_request
  attr_reader :current_user

  private

  def authorize_request
    @current_user = AuthorizeApiRequest.new(request.headers).call
    TodoPolicy.new(@current_user, request)
    @current_user
  end
end
