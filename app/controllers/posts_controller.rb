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

    def new
    end

    def create
        post = Post.create(post_params)
        if post.valid?
            render json: { post: PostSerializer.new(post)}, status: :created
        else
            render json: { error: 'failed to create post' }, status: :not_acceptable
        end
    end

    def update
    end

    def destroy
    end

    private

    def post_params
        params.require(:post).permit(:title, :img, :content, :user_id)
    end

end
