class PostsController < ApplicationController
    skip_before_action :authorized, only: [:index, :show, :create, :update, :destroy]

    def index
        posts = Post.all
        render json: posts
    end

    def show
        post = Post.find(params[:id])
        render json: post
    end

    def create
    end

    def update
    end

    def destroy
    end

    private

    def post_params
        params.require(:post).permit(:title, :img, :content)
    end

end
