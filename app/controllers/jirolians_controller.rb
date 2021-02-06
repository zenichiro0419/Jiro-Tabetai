class JiroliansController < ApplicationController
  before_action :authenticate_jirolian!, except: [:show]
  before_action :set_jirolian, except: [:mypage]

  def mypage
    redirect_to "/jirolians/#{current_jirolian.username}"
  end

  def show
    jirolian = Jirolian.find_by(username: params[:username])
    @posts = Post.where(jirolian_id: jirolian.id)
  end

  def edit
    redirect_to "/jirolians/#{@jirolian.username}" unless @jirolian == current_jirolian
  end

  def update
    # TODO: Header作成時にflashを埋め込む。
    if current_jirolian.update(jirolian_params)
      # flash.notice = '更新が完了しました。'
      redirect_to "/jirolians/#{current_jirolian.username}"
    else
      # flash.notice = '更新に失敗しました。'
      redirect_to "/jirolians/#{current_jirolian.username}/edit"
    end
  end

  private

  def set_jirolian
    @jirolian = Jirolian.find_by(username: params[:username])
  end

  def jirolian_params
    params[:jirolian].permit(:username, :gender, :birth_date, :home_jiro, :introduction, :hp_url,
                             :approved_favorited)
  end
end
