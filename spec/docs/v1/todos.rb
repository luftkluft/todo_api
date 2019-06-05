module Docs
  module V1
    module Todos
      extend Dox::DSL::Syntax

      document :api do
        resource 'Todos' do
          endpoint '/api/v1/todos'
          endpoint '/api/v1/todos/:id'
          group 'Todo_API'
        end
      end

      document :index do
        action 'Get /api/v1/todos'
      end
      document :show do
        action 'Get /api/v1/todos/:id'
      end
      document :create do
        action 'Post /api/v1/todos'
      end
      document :update do
        action 'Put /api/v1/todos/:id'
      end
      document :destroy do
        action 'Delete /api/v1/todos/:id'
      end
    end
  end
end
