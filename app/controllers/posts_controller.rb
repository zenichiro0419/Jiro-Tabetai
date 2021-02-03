class PostsController < ApplicationController
  before_action :authenticate_jirolian!, only: [:new, :create, :destroy]

  def show
    @posts = Post.where(jirolian_id: params[:jirolian_id])
  end

  def new
    @post = Post.new
  end

  def create
    @jiro = Jiro.find_by_id(params[:jiro_id])
    @post = Post.new(post_params)
    if @post.save
      redirect_to jiro_path(@jiro)
    else
      render :new
    end
  end

  def destroy; end

  private

  def post_params
    params.require(:post).permit(:jirolian_id, :content, :soup, :noodle, :boiled_vegetable, :roasted_pork,
                                 :called).merge(jiro_id: params[:jiro_id])
  end
end
