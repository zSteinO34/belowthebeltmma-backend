class PostTagsController < ApplicationController
    def index
        post_tags = PostTag.all
        render json: post_tags
    end

    def create
        pt = PostTag.create(pt_params)
        render json: pt
    end

    private

    def pt_params
        params.require(:post_tag).permit(:post_id, :tag_id)
    end
end
