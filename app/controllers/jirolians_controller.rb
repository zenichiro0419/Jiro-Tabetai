class JiroliansController < ApplicationController
  before_action :authenticate_jirolian!, except: [:show]

  def mypage
    redirect_to jirolian_path(current_jirolian)
  end

  def show
    @jirolian = Jirolian.find_by_id(params[:id])
  end

  def edit
    @jirolian = Jirolian.find_by_id(current_jirolian.id)
  end

  def update
    # TODO: Header作成時にflashを埋め込む。
    if current_jirolian.update(jirolian_params)
      # flash.notice = '更新が完了しました。'
      redirect_to jirolian_path(current_jirolian)
    else
      # flash.notice = '更新に失敗しました。'
      render action: :edit
    end
  end

  private

  def jirolian_params
    params[:jirolian].permit(:username, :gender, :birth_date, :home_jiro, :introduction, :hp_url,
                             :approved_favorited)
  end
end
