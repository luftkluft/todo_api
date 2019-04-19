module V1
  class CommentsController < ApplicationController
    before_action :set_todo
    before_action :set_item, only: %i[create]
    before_action :set_comment, only: %i[show update destroy]

    def index
      json_response(comments)
    end

    def show
      json_response(@comment)
    end

    def create
      if @item.comments.create(comment_params)
        json_response(@item, :created)
      else
        raise(ExceptionHandler::MissingToken, I18n.t('controller.comment_not_created'))
      end
    end

    def update
      if @comment.update(comment_params)
        json_response(@comment)
      else
        raise(ExceptionHandler::MissingToken, I18n.t('controller.comment_not_updated'))
      end
    end

    def destroy
      if @comment.destroy
        head :no_content
      else
        raise(ExceptionHandler::MissingToken, I18n.t('controller.comment_not_deleted'))
      end
    end

    private

    def comment_params
      params.permit(:body, :image)
    end

    def set_todo
      @todo = Todo.find(params[:todo_id])
      authorize @todo
    end

    def set_item
      @item = @todo.items.find_by(id: params[:item_id])
    end

    def set_comment
      @comment = Comment.where(item: @todo.items).first if @todo
    end

    def comments
      comments = []
      @todo.items.each do |item|
        comments.push(Comment.find_by(item_id: item.id))
      end
      comments
    end
  end
end
