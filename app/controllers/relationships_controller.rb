class RelationshipsController < ApplicationController
  before_action :set_jirolian

  def create
    following = current_jirolian.follow(@jirolian)
    if following.save
      flash[:success] = 'ジロリアンをフォローしました'
      redirect_to @jirolian
    else
      flash.now[:alert] = 'ジロリアンのフォローに失敗しました'
      redirect_to @jirolian
    end
  end

  def destroy
    following = current_jirolian.unfollow(@jirolian)
    if following.destroy
      flash[:success] = 'ジロリアンのフォローを解除しました'
      redirect_to @jirolian
    else
      flash.now[:alert] = 'ジロリアンのフォロー解除に失敗しました'
      redirect_to @jirolian
    end
  end

  private
  def
    @jirolian = Jirolian.find(params[:relationship][:follow_id])
  end

end
