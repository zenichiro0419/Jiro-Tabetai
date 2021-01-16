class FacilitiesController < ApplicationController
  def edit
    @facility = Facility.find_by(jiro_id: params[:jiro_id])
  end

  def update
    @jiro = Jiro.find_by_id(params[:jiro_id])
    @facility = @jiro.facility
    # TODO: Header作成時にflashを埋め込む。
    if @facility.update_attributes(facility_params)
      flash.notice = '更新が完了しました。'
      redirect_to jiro_path(@jiro)
    else
      flash.notice = '更新に失敗しました。'
      render 'edit'
    end
  end

  private

  def facility_params
    params.require(:facility).permit(:jiro_id, :is_renge, :is_tissue, :is_apron, :is_water_server, :is_trash_box,
                                     :is_vending_machine, :is_hair_tie).merge(jiro_id: @jiro.id)
  end
end
