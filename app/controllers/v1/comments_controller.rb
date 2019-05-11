module V1
  class CommentsController < ApplicationController
    before_action :set_todo
    before_action :authorize_todo
    before_action :set_item, only: %i[create]
    before_action :set_comment, only: %i[show update destroy]
    before_action :authorize_comment, only: %i[show update destroy]

    def index
      json_response(comments)
    end

    def show
      json_response(@comment)
    end

    def create
      comment = @item.comments.build(comment_params)
      if comment.save
        json_response(comment, :created)
      else
        raise(ExceptionHandler::MissingToken, comment.errors)
      end
    end

    def update
      if @comment.update(comment_params)
        json_response(@comment)
      else
        raise(ExceptionHandler::MissingToken, @comment.errors)
      end
    end

    def destroy
      if @comment.destroy
        head :no_content
      else
        raise(ExceptionHandler::MissingToken, @comment.errors)
      end
    end

    private

    def comment_params
      params.permit(:item_id, :id, :body, :image)
    end

    def set_todo
      @todo = Todo.find(params[:todo_id])
    end

    def authorize_todo
      authorize @todo
    end

    def set_item
      @item = @todo.items.find(comment_params[:item_id])
    end

    def set_comment
      @comment = Comment.find(comment_params[:id])
    end

    def authorize_comment
      authorize @comment
    end

    def comments
      Comment.where(item_id: @todo.items.ids)
    end
  end
end
