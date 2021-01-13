class JirosController < ApplicationController
  include RemakeParams

  def show
    @jiro = Jiro.find(params[:id])
    @facility = @jiro.facility
    if @facility.present?
      @table_seasonings = [@facility.seasoning1, @facility.seasoning2, @facility.seasoning3, @facility.seasoning4,
                           @facility.seasoning5]
    end
    @main_menus = @jiro.menu.main_menu
    @option_menus = @jiro.menu.option_menu
    business_hours = @jiro.business_hour.group_by(&:wday)
    @business_hour_list = create_business_hour_list(business_hours) if business_hours.keys.first.present?
  end

  def new
    @jiro = Jiro.new
  end

  def create
    ActiveRecord::Base.transaction do
      @jiro = Jiro.create(params_int(jiro_params))
      Facility.create(jiro_id: @jiro.id)
      Menu.create(jiro_id: @jiro.id)
      BusinessHour.create(jiro_id: @jiro.id)
    rescue ActiveRecord::RecordInvalid
      # sth
    end
    redirect_to jiro_path(@jiro)
  end

  private

  # @params [Hash] business_hours
  # @return [Hash] business_hour_list => [integer] key, [Hash] value
  def create_business_hour_list(business_hours)
    business_hour_list = {}
    (0..6).each do |wday|
      jiro_open_list = {}
      business_hours[wday].each do |business_hour|
        jiro_open_list.store(business_hour.category, [business_hour.start_at, business_hour.end_at])
      end
      business_hour_list.store(wday, jiro_open_list)
    end
    business_hour_list
  end

  def jiro_params
    params.require(:jiro).permit(:name, :address, :access, :is_parking_area, :phone_number, :hp_url, :seat_count,
                                 :payment_method, :how_to_order, :call_timing)
  end
end
