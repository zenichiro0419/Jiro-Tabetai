class TopController < ApplicationController
  before_action :set_search

  def index; end

  def search
    @jiros = @search.result(distinct: true)
    if @jiros.blank?
      flash[:alert] = '該当する店舗が登録されていません。'
      redirect_to root_path
    end
  end

  private

  def set_search
    @search = Jiro.ransack(params[:q])
  end
end
