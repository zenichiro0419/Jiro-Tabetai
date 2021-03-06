class JirosController < ApplicationController
  before_action :set_jiro, except: [:new, :create]
  before_action :authenticate_jirolian!, except: [:show]

  def show
    @facility = @jiro.facility
    @table_seasonings = create_table_seasonings_list(@facility) if @facility

    @main_menus = @jiro.menu_items.main_menu
    @toppings_list = create_toppings_list(@main_menus)
    @option_menus = @jiro.menu_items.option_menu

    @business_hour_wdays_list = @jiro.business_hours.group_by(&:wday)

    @posts = Post.where(jiro_id: params[:id])
  end

  def new
    @jiro = Jiro.new
  end

  def create
    ActiveRecord::Base.transaction do
      @jiro = Jiro.create!(create_jiro_params)
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

  def edit; end

  def update
    if @jiro.update(update_jiro_params)
      flash.notice = '更新が完了しました。'
      redirect_to jiro_path(@jiro)
    else
      flash.notice = '更新に失敗しました。'
      render action: :edit
    end
  end

  private

  def set_jiro
    @jiro = Jiro.find(params[:id])
  end

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
                                 :payment_method, :how_to_order, :call_timing, :image)
  end

  def update_jiro_params
    params[:jiro].permit(:name, :address, :access, :is_parking_area, :phone_number, :hp_url, :seat_count, :payment_method,
                         :how_to_order, :call_timing, :image)
  end
end
