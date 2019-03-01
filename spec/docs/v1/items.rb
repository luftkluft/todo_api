module Docs
  module V1
    module Items
      extend Dox::DSL::Syntax

      # define common resource data for each action
      document :api do
        resource 'Items' do
          endpoint '/todos/:todo_id/items'
          endpoint '/todos/:todo_id/items/:id'
          group 'Todo_API'
        end
      end
      # define data for specific action
      document :index do
        action 'Get todos/:todo_id/items'
      end
      document :show do
        action 'Get todos/:todo_id/items/:id'
      end
      document :create do
        action 'Post todos/:todo_id/items'
      end
      document :update do
        action 'Put todos/:todo_id/items/:id'
      end
      document :destroy do
        action 'Delete todos/:todo_id/items/:id'
      end
    end
  end
end
