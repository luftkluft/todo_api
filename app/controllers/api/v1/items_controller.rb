module Api
  module V1
    class ItemsController < ApplicationController
      before_action :set_todo
      before_action :authorize_todo
      before_action :set_todo_item, only: %i[show update destroy]
      before_action :authorize_item, only: %i[show update destroy]

      def index
        json_response(@todo.items)
      end

      def show
        json_response(@item)
      end

      def create
        item = @todo.items.build(item_params)
        if item.save
          json_response(item, :created)
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
      rescue StandardError
        raise(ExceptionHandler::InvalidOperation, I18n.t('controller.todo_not_found'))
      end

      def authorize_todo
        authorize @todo
      end

      def authorize_item
        authorize @item
      end

      def set_todo_item
        @item = @todo.items.find(params[:id])
      rescue StandardError
        raise(ExceptionHandler::InvalidOperation, I18n.t('controller.item_not_found'))
      end
    end
  end
end
