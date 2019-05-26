module Docs
  module V1
    module Items
      extend Dox::DSL::Syntax

      document :api do
        resource 'Items' do
          endpoint '/api/v1/todos/:todo_id/items'
          endpoint '/api/v1/todos/:todo_id/items/:id'
          group 'Todo_API'
        end
      end

      document :index do
        action 'Get /api/v1/todos/:todo_id/items'
      end
      document :show do
        action 'Get /api/v1/todos/:todo_id/items/:id'
      end
      document :create do
        action 'Post /api/v1/todos/:todo_id/items'
      end
      document :update do
        action 'Put /api/v1/todos/:todo_id/items/:id'
      end
      document :destroy do
        action 'Delete /api/v1/todos/:todo_id/items/:id'
      end
    end
  end
end
