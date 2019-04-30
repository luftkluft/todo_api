module V1
  class ItemsController < ApplicationController
    before_action :set_todo
    before_action :authorize_todo
    before_action :set_todo_item, only: %i[show update destroy]

    def index
      json_response(@todo.items)
    end

    def show
      json_response(@item)
    end

    def create
      if @todo.items.create(item_params)
        json_response(@todo, :created)
      else
        raise(ExceptionHandler::MissingToken, I18n.t('controller.item_not_created'))
      end
    end

    def update
      if @item.update(item_params)
        json_response(@item)
      else
        raise(ExceptionHandler::MissingToken, I18n.t('controller.item_not_updated'))
      end
    end

    def destroy
      if @item.destroy
        head :no_content
      else
        raise(ExceptionHandler::MissingToken, I18n.t('controller.item_not_deleted'))
      end
    end

    private

    def item_params
      params.permit(:name, :done, :deadline)
    end

    def set_todo
      @todo = Todo.find(params[:todo_id])
    end

    def authorize_todo
      authorize @todo
    end

    def set_todo_item
      @item = @todo.items.find(params[:id]) if @todo
    end
  end
end
