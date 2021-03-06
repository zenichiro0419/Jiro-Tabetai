class JiroliansController < ApplicationController
  before_action :authenticate_jirolian!, except: [:show]
  before_action :set_jirolian, except: [:mypage]

  def mypage
    redirect_to "/jirolians/#{current_jirolian.username}"
  end

  def show
    @posts = Post.where(jirolian_id: @jirolian.id)

    wanna_eat_jiro_ids = @jirolian.wanna_eat_statuses.pluck(:jiro_id)
    @wanna_eat_jiros = Jiro.where(id: wanna_eat_jiro_ids)

    have_eaten_jiro_ids = @jirolian.have_eaten_statuses.pluck(:jiro_id)
    @have_eaten_jiros = Jiro.where(id: have_eaten_jiro_ids)

    followed_ids = Relationship.where(jirolian_id: @jirolian.id).pluck(:follow_id)
    @followed_jirolians = Jirolian.where(id: followed_ids)

    follower_ids = Relationship.where(follow_id: @jirolian.id).pluck(:jirolian_id)
    @follower_jirolians = Jirolian.where(id: follower_ids)
  end

  def edit
    redirect_to "/jirolians/#{@jirolian.username}" unless @jirolian == current_jirolian
  end

  def update
    if current_jirolian.update(jirolian_params)
      flash.notice = '更新が完了しました。'
      redirect_to "/jirolians/#{current_jirolian.username}"
    else
      flash.notice = '更新に失敗しました。'
      redirect_to "/jirolians/#{current_jirolian.username}/edit"
    end
  end

  private

  def set_jirolian
    @jirolian = Jirolian.find_by(username: params[:username])
  end

  def jirolian_params
    params[:jirolian].permit(:username, :gender, :birth_date, :home_jiro, :introduction, :hp_url,
                             :approved_favorited, :image)
  end
end
