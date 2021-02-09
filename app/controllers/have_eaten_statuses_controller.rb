class HaveEatenStatusesController < ApplicationController
  before_action :set_jiro
  before_action :authenticate_jirolian!

  def create
    have_eaten_status = @jiro.have_eaten_statuses.new(jirolian_id: current_jirolian.id)
    have_eaten_status.save
    redirect_to request.referer
  end

  def destroy
    have_eaten_status = current_jirolian.have_eaten_statuses.find_by(jiro_id: @jiro.id)
    have_eaten_status.destroy
    redirect_to request.referer
  end

  private

  def set_jiro
    @jiro = Jiro.find(params[:jiro_id])
  end
end
