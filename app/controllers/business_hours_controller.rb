class BusinessHoursController < ApplicationController
  before_action :set_jiro

  def edit
    @business_hours = BusinessHour.where(jiro_id: params[:jiro_id])
  end

  def update
    @business_hours = BusinessHour.where(jiro_id: params[:jiro_id])

    update_business_hours = push_update_business_hours(@business_hours)

    BusinessHour.transaction do
      BusinessHour.import(update_business_hours, on_duplicate_key_update: [:is_holiday, :start_at, :end_at])
      redirect_to jiro_path(@jiro)
    rescue ActiveRecord::RecordInvalid
      render :show
    end
  end

  private

  def set_jiro
    @jiro = Jiro.find(params[:jiro_id])
  end

  def push_update_business_hours(business_hours)
    update_business_hours = []
    business_hours.each do |business_hour|
      business_hour.is_holiday = business_hours_params(business_hour.id)[:is_holiday]
      business_hour.start_at = business_hours_params(business_hour.id)[:start_at]
      business_hour.end_at = business_hours_params(business_hour.id)[:end_at]
      update_business_hours << business_hour
    end
  end

  def business_hours_params(business_hour_id)
    params[:business_hour][:business_hour][business_hour_id.to_s].permit(:wday, :is_holiday, :category, :start_at,
                                                                         :end_at).merge(jiro_id: params[:jiro_id])
  end
end
