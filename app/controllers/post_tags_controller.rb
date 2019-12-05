class PostTagsController < ApplicationController
    skip_before_action :authorized, only: [:index, :show, :create, :update, :destroy_tag]

    def index
        post_tags = PostTag.all
        render json: post_tags
    end

    def create
        pt = PostTag.create(pt_params)
        render json: pt
    end

    def destroy_tag
        pt = PostTag.find_by(post_id: params[:post_id], tag_id: params[:tag_id])
        pt.destroy
    end

    private

    def pt_params
        params.require(:post_tag).permit(:post_id, :tag_id)
    end
end
