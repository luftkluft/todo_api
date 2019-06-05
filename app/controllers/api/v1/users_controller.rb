module Api
  module V1
    class UsersController < ApplicationController
      skip_before_action :authorize_request, only: :create
      def create
        user = User.new(user_params)
        if user.save
          auth_token = AuthenticateUser.new(user.email, user.password).call
          response = { message: I18n.t('account_created'), auth_token: auth_token }
          json_response(response, :created)
        else
          raise(ExceptionHandler::MissingToken, I18n.t('account_not_created'))
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
end
