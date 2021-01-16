class BusinessHoursController < ApplicationController
  def edit
    @business_hour = BusinessHour.where(jiro_id: params[:jiro_id])
  end

  def update; end
end
