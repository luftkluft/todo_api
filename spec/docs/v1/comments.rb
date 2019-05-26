module Docs
  module V1
    module Comments
      extend Dox::DSL::Syntax

      document :api do
        resource 'Comments' do
          endpoint '/api/v1/todos/:todo_id/items/:item_id/comments'
          endpoint '/api/v1/todos/:todo_id/items/:item_id/comments/:id'
          group 'Todo_API'
        end
      end

      document :index do
        action 'Get /api/v1/todos/:todo_id/items/:item_id/comments'
      end
      document :show do
        action 'Get /api/v1/todos/:todo_id/items/:item_id/comments/:id'
      end
      document :create do
        action 'Post /api/v1/todos/:todo_id/items/:item_id/comments'
      end
      document :update do
        action 'Put /api/v1/todos/:todo_id/items/:item_id/comments/:id'
      end
      document :destroy do
        action 'Delete /api/v1/todos/:todo_id/items/:item_id/comments/:id'
      end
    end
  end
end
