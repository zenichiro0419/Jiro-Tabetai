class RelationshipsController < ApplicationController
  before_action :set_jirolian

  def create
    following = current_jirolian.follow(@jirolian)
    if following.save
      flash[:success] = 'ジロリアンをフォローしました'
      redirect_to "/jirolians/#{@jirolian.username}"
    else
      flash.now[:alert] = 'ジロリアンのフォローに失敗しました'
      redirect_to "/jirolians/#{@jirolian.username}"
    end
  end

  def destroy
    following = current_jirolian.unfollow(@jirolian)
    if following.destroy
      flash[:success] = 'ジロリアンのフォローを解除しました'
      redirect_to "/jirolians/#{@jirolian.username}"
    else
      flash.now[:alert] = 'ジロリアンのフォロー解除に失敗しました'
      redirect_to "/jirolians/#{@jirolian.username}"
    end
  end

  private

  def set_jirolian
    @jirolian = Jirolian.find(params[:follow_id])
  end
end
