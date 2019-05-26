module Api::V1
  class UsersController < ApplicationController
    skip_before_action :authorize_request, only: :create
    def create
      if user = User.create(user_params)
        auth_token = AuthenticateUser.new(user.email, user.password).call
        response = { message: I18n.t('account_created'), auth_token: auth_token }
        json_response(response, :created)
      else
        raise(ExceptionHandler::MissingToken, user.errors)
      end
    end

    private

    def user_params
      params.permit(
        :name,
        :email,
        :password,
        :password_confirmation
      )
    end
  end
end
