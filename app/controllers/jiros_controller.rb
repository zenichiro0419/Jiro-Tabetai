class JirosController < ApplicationController
  include RemakeParams

  def show
    @jiro = Jiro.find_by_id(params[:id])

    @facility = @jiro.facility
    @table_seasonings = create_table_seasonings_list(@facility)

    @main_menus = @jiro.menu.main_menu
    @toppings_list = create_toppings_list(@main_menus)
    @option_menus = @jiro.menu.option_menu

    business_hours = @jiro.business_hour
    @business_hours_list = create_business_hours_list(business_hours)
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

  # @pramas [Facility] facility
  # @return [Array]
  def create_table_seasonings_list(facility)
    [facility.seasoning1, facility.seasoning2, facility.seasoning3, facility.seasoning4,
     facility.seasoning5]
  end

  # @pramas [MainMenu] main_menus
  # @return [Hash] => [integer] key, [Array] value
  def create_toppings_list(main_menus)
    toppings_list = {}
    main_menus.each do |main_menu|
      toppings = [main_menu.topping1, main_menu.topping2, main_menu.topping3, main_menu.topping4, main_menu.topping5,
                  main_menu.topping6, main_menu.topping7]
      toppings_list.store(main_menu.id, toppings)
    end
    toppings_list
  end

  # @params [Hash] business_hours
  # @return [Hash] business_hour_list => [integer] key, [Hash] value
  def create_business_hours_list(business_hours)
    business_hours_list = {}
    business_hours_wday_hash = business_hours.group_by(&:wday)
    (0..6).each do |wday|
      jiro_open_list = {}
      break if business_hours_wday_hash[wday].nil?

      business_hours_wday_hash[wday].each do |business_hour|
        jiro_open_list.store(business_hour.category, [business_hour.start_at, business_hour.end_at])
      end
      business_hour_list.store(wday, jiro_open_list)
    end
    business_hours_list
  end

  def jiro_params
    params.require(:jiro).permit(:name, :address, :access, :is_parking_area, :phone_number, :hp_url, :seat_count,
                                 :payment_method, :how_to_order, :call_timing)
  end
end
