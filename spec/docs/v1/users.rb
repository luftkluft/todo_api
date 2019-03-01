module Docs
  module V1
    module Users
      extend Dox::DSL::Syntax

      # define common resource data for each action
      document :api do
        resource 'Users' do
          endpoint '/signup'
          endpoint '/auth/login'
          group 'Todo_API'
        end
      end
      # define data for specific action
      document :create do
        action 'Post signup'
      end
      document :authenticate do
        action 'Post auth/login'
      end
    end
  end
end