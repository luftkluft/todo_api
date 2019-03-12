module Docs
  module V1
    module Todos
      extend Dox::DSL::Syntax

      document :api do
        resource 'Todos' do
          endpoint '/todos'
          endpoint '/todos/:id'
          group 'Todo_API'
        end
      end

      document :index do
        action 'Get todos'
      end
      document :show do
        action 'Get todos/:id'
      end
      document :create do
        action 'Post todos'
      end
      document :update do
        action 'Put todos/:id'
      end
      document :destroy do
        action 'Delete todos/:id'
      end
    end
  end
end
