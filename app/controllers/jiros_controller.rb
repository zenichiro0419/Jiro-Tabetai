class JirosController < ApplicationController
  include RemakeParams

  def show
    @jiro = Jiro.find_by_id(params[:id])

    @facility = @jiro.facility
    @table_seasonings = create_table_seasonings_list(@facility) if @facility

    @main_menus = @jiro.menu_items.main_menu
    @toppings_list = create_toppings_list(@main_menus)
    @option_menus = @jiro.menu_items.option_menu

    @business_hour_wdays_list = @jiro.business_hours.group_by(&:wday)
  end

  def new
    @jiro = Jiro.new
  end

  def create
    ActiveRecord::Base.transaction do
      @jiro = Jiro.create!(params_int(create_jiro_params))
    end
    Facility.create(jiro_id: @jiro.id)

    business_hours = []
    (0..6).each do |wday|
      (1..2).each do |category|
        business_hours << BusinessHour.new(wday: wday, category: category, jiro_id: @jiro.id)
      end
    end
    BusinessHour.import(business_hours)

    menu_items = []
    6.times do
      menu_items << MenuItem.new(is_main: true, jiro_id: @jiro.id)
      menu_items << MenuItem.new(is_main: false, jiro_id: @jiro.id)
    end
    MenuItem.import(menu_items)

    redirect_to jiro_path(@jiro)
  rescue StandardError => e
    render action: :new
  end

  def edit
    @jiro = Jiro.find_by_id(params[:id])
  end

  def update
    @jiro = Jiro.find_by_id(params[:id])
    # TODO: Header作成時にflashを埋め込む。
    if @jiro.update(params_int(update_jiro_params))
      # flash.notice = '更新が完了しました。'
      redirect_to jiro_path(@jiro)
    else
      # flash.notice = '更新に失敗しました。'
      render action: :edit
    end
  end

  private

  # @pramas [Facility] facility
  # @return [Array]
  def create_table_seasonings_list(facility)
    [facility.seasoning1, facility.seasoning2, facility.seasoning3, facility.seasoning4,
     facility.seasoning5].uniq
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

  def create_jiro_params
    params.require(:jiro).permit(:name, :address, :access, :is_parking_area, :phone_number, :hp_url, :seat_count,
                                 :payment_method, :how_to_order, :call_timing)
  end

  def update_jiro_params
    params.permit(:name, :address, :access, :is_parking_area, :phone_number, :hp_url, :seat_count, :payment_method,
                  :how_to_order, :call_timing)
  end
end
