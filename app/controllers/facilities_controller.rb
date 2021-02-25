class FacilitiesController < ApplicationController
  before_action :set_jiro

  def edit
    @facility = Facility.find_by(jiro_id: params[:jiro_id])
  end

  def update
    @facility = @jiro.facility
    if @facility.update(facility_params)
      flash.notice = '更新が完了しました。'
      redirect_to jiro_path(@jiro)
    else
      flash.notice = '更新に失敗しました。'
      render 'edit'
    end
  end

  private

  def set_jiro
    @jiro = Jiro.find(params[:jiro_id])
  end

  def facility_params
    params.permit(:jiro_id, :is_renge, :is_tissue, :is_apron, :is_water_server, :is_trash_box,
                  :is_vending_machine, :is_hair_tie, :in_store_pending, :seasoning1, :seasoning2,
                  :seasoning3, :seasoning4, :seasoning5).merge(jiro_id: @jiro.id)
  end
end
