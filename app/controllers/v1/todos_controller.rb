module V1
  class TodosController < ApplicationController
    before_action :set_todo, only: %i[show update destroy]
    before_action :user_auth, only: %i[show update destroy]

    def index
      @todos = current_user.todos.paginate(page: params[:page], per_page: 20)
      json_response(@todos)
    end

    def show
      json_response(@todo)
    end

    def create
      if @todo = current_user.todos.create(todo_params)
        json_response(@todo, :created)
      else
        raise(ExceptionHandler::InvalidOperation, I18n.t('controller.todo_not_created'))
      end
    end

    def update
      if @todo.update(todo_params)
        head :no_content
      else
        raise(ExceptionHandler::InvalidOperation, I18n.t('controller.todo_not_updated'))
      end
    end

    def destroy
      if @todo.destroy
        head :no_content
      else
        raise(ExceptionHandler::InvalidOperation, I18n.t('controller.todo_not_deleted'))
      end
    end

    private

    def user_auth
      authorize @todo, :user_auth?
    end

    def todo_params
      params.permit(:title)
    end

    def set_todo
      @todo = Todo.find(params[:id])
    end
  end
end
