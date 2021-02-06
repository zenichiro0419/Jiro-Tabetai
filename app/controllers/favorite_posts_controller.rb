class FavoritePostsController < ApplicationController
  before_action :set_post
  before_action :authenticate_jirolian!

  def create
    favorite_post = @post.favorite_posts.new(jirolian_id: current_jirolian.id)
    favorite_post.save
    flash[:success] = 'Liked post'
    redirect_to request.referer
  end

  def destroy
    favorite_post = current_jirolian.favorite_posts.find_by(post_id: @post.id)
    favorite_post.destroy
    redirect_to request.referer
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end
end
