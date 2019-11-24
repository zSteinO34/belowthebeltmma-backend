class UsersController < ApplicationController
    skip_before_action :authorized, only: [:create, :index]

    def index
        users = User.all
        render json: users
    end

    def show
        user = User.find(params[:id])
        render json: user
    end

    def new
    end

    def create
        user = User.create(user_params)
        if user.valid?
            token = encode_token(user_id: user.id) 
            render json: { id: user.id, username: user.username, 
                isAdmin: user.isAdmin, email: user.email, bio: user.bio, 
                posts: user.posts, likes: user.likes, comments: user.comments, liked_posts: user.liked_posts, token: token }
        else
            render json: { error: 'failed to create user' }, status: :not_acceptable
        end
    end

    def update
        user = User.find(params[:id])
        user.update(user_params)
        render json: user
    end

    private

    def user_params;
        params.require(:user).permit(:username, :password, :email, :isAdmin, :liked_posts, :bio)
    end
end
