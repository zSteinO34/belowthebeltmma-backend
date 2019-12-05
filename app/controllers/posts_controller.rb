class PostsController < ApplicationController
    skip_before_action :authorized, only: [:index, :show, :create, :update, :destroy]

    def index
        posts = Post.all
        newPosts = posts.map do |post| 
            header_img_url = rails_blob_path(post.header_img, disposition: "attachment", only_path: true)
            {id: post.id, title: post.title, content: post.content, user_id: post.user_id, 
            created_at: post.created_at, header_img: header_img_url, likes: post.likes, 
            comments: post.comments, tags: post.tags, user: post.user}
        end
        render json: newPosts, status: :created
    end

    def show
        post = Post.find(params[:id])
        header_img_url = rails_blob_path(post.header_img, disposition: "attachment", only_path: true)
        render json: {id: post.id, title: post.title, content: post.content, user_id: post.user_id, 
            created_at: post.created_at, header_img: header_img_url, likes: post.likes, 
            comments: post.comments, tags: post.tags, user: post.user}, status: :created
    end

    def new
    end

    def create
        post = Post.create(post_params)
        if post.valid?
            header_img_url = rails_blob_path(post.header_img, disposition: "attachment", only_path: true)
            render json: { id: post.id, title: post.title, content: post.content, user_id: post.user_id, 
                created_at: post.created_at, header_img: header_img_url }, status: :created
        else
            render json: { error: 'failed to create post' }, status: :not_acceptable
        end
    end

    def update
        post = Post.find(params[:id])
        post.update(post_params)
        if post.valid?
            render json: post
        else
            render json: { error: 'failed to update post' }, status: :not_acceptable
        end
    end

    def destroy
        post = Post.find(params[:id])
        post.destroy
        render json: post
    end

    private

    def post_params
        params.require(:post).permit(:title, :content, :user_id, :header_img)
    end

end
