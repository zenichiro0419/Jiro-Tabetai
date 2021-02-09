class WannaEatStatusesController < ApplicationController
  before_action :set_jiro
  before_action :authenticate_jirolian!

  def create
    wanna_eat_status = @jiro.wanna_eat_statuses.new(jirolian_id: current_jirolian.id)
    wanna_eat_status.save
    redirect_to request.referer
  end

  def destroy
    wanna_eat_status = current_jirolian.wanna_eat_statuses.find_by(jiro_id: @jiro.id)
    wanna_eat_status.destroy
    redirect_to request.referer
  end

  private

  def set_jiro
    @jiro = Jiro.find(params[:jiro_id])
  end
end
