class AuthController < ApplicationController
    skip_before_action :authorized, only: [:create, :show]
    
    def create
        user = User.find_by(username: params[:username])
        payload = { id: user.id}
    
        token = JWT.encode payload, 'secret', 'HS256'
    
        if user && user.authenticate(params[:password])
          render json: { id: user.id, username: user.username, 
            isAdmin: user.isAdmin, email: user.email, bio: user.bio, 
            posts: user.posts, likes: user.likes, comments: user.comments, liked_posts: user.liked_posts, token: token }
        else
          render json: { error: 'invalid credentials' }, status: 401
        end
      end
    
      def show
        token  = request.headers['Authorization'].split(' ')[1]
        begin
          decoded_token = JWT.decode token, 'secret', true, { algorithm: 'HS256' }
          user_id = decoded_token[0]['id']
          user = User.find(user_id)
        rescue
          user = nil
        end
    
        if user
          render json: { id: user.id, username: user.username, 
            isAdmin: user.isAdmin, email: user.email, bio: user.bio, 
            posts: user.posts, likes: user.likes, comments: user.comments, liked_posts: user.liked_posts, token: token }
        else
          render json: { error: 'invalid token' }, status: 401
        end
      end
end
