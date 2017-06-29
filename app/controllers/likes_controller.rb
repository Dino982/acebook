class LikesController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    @like = @post.likes.create(like_params)
    # @likes_count = Like.where(post_id: @post.id).ids.length
    redirect_to posts_url
  end

  private
  def like_params
    params.require(:like).permit(:user_id)
  end

end
