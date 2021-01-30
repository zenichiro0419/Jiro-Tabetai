class JiroliansController < ApplicationController
  def show
    @jirolian = Jirolian.find_by_id(params[:id])
  end

  def edit
    @jirolian = Jirolian.find_by_id(params[:id])
  end

  def update
    @jirolian = Jirolian.find_by_id(params[:id])
    # TODO: Header作成時にflashを埋め込む。
    if @jirolian.update(jirolian_params)
      # flash.notice = '更新が完了しました。'
      redirect_to jirolian_path(@jirolian)
    else
      # flash.notice = '更新に失敗しました。'
      render action: :edit
    end
  end

  private

  def jirolian_params
    params[:jirolian].permit(:username, :sex, :birth_date, :home_jiro, :introduction, :hp_url,
                             :approved_favorited)
  end
end
