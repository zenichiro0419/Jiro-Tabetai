class FacilitiesController < ApplicationController
  def edit
    @facility = Facility.find_by(jiro_id: params[:jiro_id])
  end

  def update
    @jiro = Jiro.find_by_id(params[:jiro_id])
    @facility = Facility.new(facility_params)
    # TODO: Header作成時にflashを埋め込む。
    if @facility.save
      flash.notice = '更新が完了しました。'
      redirect_to jiro_path(@jiro)
    else
      flash.notice = '更新に失敗しました。'
      render action: :edit
    end
    pp @facility
  end

  private

  def facility_params
    params.require(:facility).permit(:jiro_id, :is_renge, :is_tissue, :is_apron, :is_water_server, :is_trash_box,
                                     :is_vending_machine, :is_hair_tie).merge(jiro_id: @jiro.id)
  end
end
