module V1
  class TodosController < ApplicationController
    before_action :set_todo, only: %i[show update destroy]
    before_action :authorize_todo, only: %i[show update destroy]

    def index
      todos = current_user.todos.paginate(page: params[:page], per_page: 20)
      json_response(todos)
    end

    def show
      json_response(@todo)
    end

    def create
      todo = current_user.todos.build(todo_params)
      if todo.save
        json_response(todo, :created)
      else
        raise(ExceptionHandler::InvalidOperation, todo.errors)
      end
    end

    def update
      if @todo.update(todo_params)
        json_response(@todo)
      else
        raise(ExceptionHandler::InvalidOperation, @todo.errors)
      end
    end

    def destroy
      if @todo.destroy
        head :no_content
      else
        raise(ExceptionHandler::InvalidOperation, @todo.errors)
      end
    end

    private

    def todo_params
      params.permit(:title)
    end

    def set_todo
      @todo = Todo.find(params[:id])
    end

    def authorize_todo
      authorize @todo
    end
  end
end
