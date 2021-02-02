class PostsController < ApplicationController
  before_action :authenticate_jirolian!, except: [:new, :create, :destroy]

  def index
    @posts = Post.where(jiro_id: params[:jiro_id])
  end

  def show
    @posts = Post.where(jirolian_id: params[:jirolian_id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to jiro_path
    else
      render :new
    end
  end

  def destroy; end

  private

  def post_params
    params[:post].permit(:jiro_id, :jirolian_id, :content, :soup, :noodle, :boiled_vegetable, :roasted_pork, :called)
  end
end
