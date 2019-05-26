module Docs
  module V1
    module Users
      extend Dox::DSL::Syntax

      document :api do
        resource 'Users' do
          endpoint '/api/v1/signup'
          endpoint '/api/v1/auth/login'
          group 'Todo_API'
        end
      end

      document :create do
        action 'Post /api/v1/signup'
      end
      document :authenticate do
        action 'Post /api/v1/auth/login'
      end
    end
  end
end
