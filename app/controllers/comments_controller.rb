class CommentsController < ApplicationController
    skip_before_action :authorized, only: [:index, :create, :destroy]

    def index
        comments = Comment.all
        render json: comments.to_json(:include => [:user])
    end

    def create
        comment = Comment.create(comment_params)
        render json: comment
    end

    private

    def comment_params
        params.require(:comment).permit(:user_id, :post_id, :comment_body)
    end
end
